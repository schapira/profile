api = 2
core = 7.x

; Drupal core.
projects[drupal][type] = core
projects[drupal][version] = 7.34

; Modules - Main
projects[ctools][version] = "1.5"
projects[ctools][subdir] = "contrib"

projects[views][version] = "3.8"
projects[views][subdir] = "contrib"

projects[entity][version] = "1.5"
projects[entity][subdir] = "contrib"

projects[rules][version] = "2.7"
projects[rules][subdir] = "contrib"

projects[features][version] = "2.2"
projects[features][subdir] = "contrib"

projects[jquery_update][version] = "2.4"
projects[jquery_update][subdir] = "contrib"

projects[libraries][version] = "2.2"
projects[libraries][subdir] = "contrib"

projects[token][version] = "1.5"
projects[token][subdir] = "contrib"

projects[webform][version] = "4.2"
projects[webform][subdir] = "contrib"

projects[backup_migrate][version] = "3.0"
projects[backup_migrate][subdir] = "contrib"

projects[context][version] = "3.3"
projects[context][subdir] = "contrib"

projects[views_bulk_operations][version] = "3.2"
projects[views_bulk_operations][subdir] = "contrib"

projects[wysiwyg][version] = "2.x-dev"
projects[wysiwyg][subdir] = "contrib"

projects[admin_views][version] = "1.3"
projects[admin_views][subdir] = "contrib"

projects[ckeditor_link][version] = "2.3"
projects[ckeditor_link][subdir] = "contrib"

projects[module_filter][version] = "2.0-alpha2"
projects[module_filter][subdir] = "contrib"

;==========
; Media modules
;==========
projects[media][subdir] = "contrib"
projects[media][version] = "2.0-alpha4"

projects[media_vimeo][version] = "2.0"
projects[media_vimeo][subdir] = "contrib"

projects[media_youtube][version] = "2.0-rc4"
projects[media_youtube][subdir] = "contrib"


;==========
; UI modules
;==========
projects[admin][version] = "2.0-beta3"
projects[admin][subdir] = "contrib"

projects[admin_menu][version] = "3.0-rc4"
projects[admin_menu][subdir] = "contrib"
projects[admin_menu][patch][] = "https://www.drupal.org/files/issues/admin_menu-fix_rtl-725840-57.patch"

projects[autocomplete_deluxe][version] = "2.0-beta3"
projects[autocomplete_deluxe][subdir] = "contrib"

projects[custom_search][version] = "1.16"
projects[custom_search][subdir] = "contrib"

;==========
; Fields modules
;==========
projects[date][version] = "2.8"
projects[date][subdir] = "contrib"

projects[email][version] = "1.3"
projects[email][subdir] = "contrib"

projects[entityreference][version] = "1.1"
projects[entityreference][subdir] = "contrib"

projects[extlink][version] = "1.18"
projects[extlink][subdir] = "contrib"

projects[job_scheduler][version] = "2.0-alpha3"
projects[job_scheduler][subdir] = "contrib"

projects[link][version] = "1.3"
projects[link][subdir] = "contrib"

;==========
; Extra modules
;==========
projects[eva][version] = "1.2"
projects[eva][subdir] = "contrib"

projects[file_entity][version] = "2.0-beta1"
projects[file_entity][subdir] = "contrib"

projects[strongarm][version] = "2.0"
projects[strongarm][subdir] = "contrib"

projects[coffee][version] = "2.2"
projects[coffee][subdir] = contrib

projects[l10n_update][version] = "1.1"
projects[l10n_update][subdir] = contrib

;==========
; Commerce modules
;==========
projects[addressfield][version] = "1.0-beta5"
projects[addressfield][subdir] = "contrib"

projects[commerce][version] = "1.10"
projects[commerce][subdir] = "contrib"

projects[commerce_ajax_cart][version] = "1.0-beta3"
projects[commerce_ajax_cart][subdir] = "contrib"

projects[commerce_autosku][version] = "1.1"
projects[commerce_autosku][subdir] = "contrib"

projects[commerce_checkout_login][version] = "1.x-dev"
projects[commerce_checkout_login][subdir] = "contrib"

projects[commerce_coupon][version] = "1.0-beta7"
projects[commerce_coupon][subdir] = "contrib"

projects[commerce_coupon_fixed_amount][version] = "1.0-beta7"
projects[commerce_coupon_fixed_amount][subdir] = "contrib"

projects[commerce_coupon_pct][version] = "1.0-beta7"
projects[commerce_coupon_pct][subdir] = "contrib"

projects[commerce_discount][version] = "1.0-alpha4"
projects[commerce_discount][subdir] = "contrib"

projects[commerce_extra][version] = "1.0-alpha1"
projects[commerce_extra][subdir] = "contrib"

projects[commerce_flat_rate][version] = "1.0-beta2"
projects[commerce_flat_rate][subdir] = "contrib"

projects[commerce_paypal][version] = "2.3"
projects[commerce_paypal][subdir] = "contrib"

projects[commerce_price_savings_formatter][version] = "1.4"
projects[commerce_price_savings_formatter][subdir] = "contrib"

projects[commerce_shipping][version] = "2.1"
projects[commerce_shipping][subdir] = "contrib"

projects[commerce_single_address][version] = "1.2"
projects[commerce_single_address][subdir] = "contrib"

projects[inline_entity_form][version] = "1.5"
projects[inline_entity_form][subdir] = "contrib"

;==========
; Commerce Extra modules
;==========
projects[commerce_discount][version] = 1.0-alpha4
projects[commerce_discount][subdir] = "contrib"

projects[commerce_checkout_progress][version] = 1.3
projects[commerce_checkout_progress][subdir] = "contrib"

projects[commerce_addressbook][version] = 2.0-rc8
projects[commerce_addressbook][subdir] = "contrib"

projects[commerce_backoffice][version] = 1.4
projects[commerce_backoffice][subdir] = "contrib"

projects[views_megarow][version] = 1.4
projects[views_megarow][subdir] = "contrib"

projects[commerce_add_to_cart_confirmation][version] = 1.0-rc2
projects[commerce_add_to_cart_confirmation][subdir] = "contrib"

;==========
; SEO modules
;==========
projects[xmlsitemap][version] = "2.0"
projects[xmlsitemap][subdir] = "contrib"

projects[page_title][version] = "2.7"
projects[page_title][subdir] = "contrib"

projects[pathauto][version] = "1.2"
projects[pathauto][subdir] = "contrib"

projects[google_analytics][version] = "2.0"
projects[google_analytics][subdir] = "contrib"

projects[metatag][version] = "1.4"
projects[metatag][subdir] = "contrib"

projects[opengraph_meta][version] = "1.3"
projects[opengraph_meta][subdir] = "contrib"

projects[globalredirect][version] = "1.5"
projects[globalredirect][subdir] = "contrib"

projects[search404][version] = "1.3"
projects[search404][subdir] = "contrib"

;==========
; Themes
;==========
projects[zen][type] = "theme"
projects[bear_skin][type] = "theme"

;==========
;Libraries
;==========
libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.4.5/ckeditor_4.4.5_standard.zip"
libraries[ckeditor][destination] = libraries
libraries[ckeditor][directory_name] = ckeditor

;  Views slideshow.
;  Grabbing jquery.cycle.all.latest.min.js renaming and putting in the appropriate dir
;libraries[jquery.cycle.all.min.js][download][type] = "file"
;libraries[jquery.cycle.all.min.js][download][url] = "https://github.com/downloads/malsup/cycle/jquery.cycle.all.latest.min.js"
;libraries[jquery.cycle.all.min.js][filename] ="jquery.cycle.all.min.js"
;libraries[jquery.cycle.all.min.js][destination] ="libraries/jquery.cycle"




