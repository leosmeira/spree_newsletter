
Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                      :name => "newsletter_admin_tab",
                      :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                      :text => "<%= tab(:newsletter_dashboard, :icon => 'icon-comments') %>",
                      :disabled => false)
