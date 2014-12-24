<?php

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function tikke_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form["site_information"]["site_name"]["#default_value"] = $_SERVER["SERVER_NAME"];
}

/**
 * Implements hook_install_tasks().
 */
function tikke_install_tasks() {

  // Add installation step asking for additional languages to install.
  $tasks['tikke_configure_translations_form'] = array(
    'display_name' => st('Configure languages'),
    'type' => 'form',
  );

  // Add batch process installing selected additional languages.
  $tasks['tikke_import_translations'] = array(
    'display_name' => st('Import translations'),
    'type' => 'batch',
  );

  return $tasks;
}

/**
 * Installation task callback: returns the form allowing the user to select
 * additional languages to install.
 */
function tikke_configure_translations_form() {
  // Provides predefined country list.
  include_once DRUPAL_ROOT . '/includes/iso.inc';

  $form['translations'] = array(
    '#type' => 'select',
    '#title' => st('Additional languages'),
    '#description' => st('Select additional languages to enable and download contributed interface translations.'),
    '#options' => _country_get_predefined_list(),
    '#multiple' => TRUE,
    '#size' => 10,
  );

  $form['submit'] = array(
    '#type' => 'submit',
    '#value' => st('Install selected languages'),
  );

  return $form;
}

/**
 * Submit callback: saves selected languages to be processed on the next step.
 */
function tikke_configure_translations_form_submit(&$form, &$form_state) {
  variable_set('tikke_selected_translations', $form_state['values']['translations']);
}

/**
 * Installation task callback: creates batch process to enable additional
 * languages and download relevant interface translations.
 */
function tikke_import_translations() {
  include_once DRUPAL_ROOT . '/includes/locale.inc';
  module_load_include('check.inc', 'l10n_update');
  module_load_include('batch.inc', 'l10n_update');

  if ($translations = variable_get('tikke_selected_translations', array())) {
    // No need to keep this variable anymore.
    variable_del('tikke_selected_translations');

    // Prepare batch process to enable languages and download translations.
    $operations = array();
    foreach ($translations as $translation) {
      locale_add_language(strtolower($translation));

      // Build batch with l10n_update module.
      $history = l10n_update_get_history();
      $available = l10n_update_available_releases();
      $updates = l10n_update_build_updates($history, $available);

      $operations = array_merge($operations, _l10n_update_prepare_updates($updates, NULL, array()));
    }

    $batch = l10n_update_batch_multiple($operations, LOCALE_IMPORT_KEEP);
    return $batch;
  }
}

/**
 * Implement hook_install_tasks_alter().
 */
function tikke_install_tasks_alter(&$tasks, $install_state) {
  // Set default site language to English.
  global $install_state;
  $install_state['parameters']['locale'] = 'en';
  // Hide 'Choose language' installation task.
  $tasks['install_select_locale']['display'] = FALSE;
  $tasks['install_select_locale']['run'] = INSTALL_TASK_SKIP;
}
