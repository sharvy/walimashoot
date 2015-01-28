Rails.application.configure do
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true

  config.app_domain = 'walimashoot.herokuapp.com'

  config.action_mailer_delivery_method = :smtp
  config.action_mailer_perform_deliveries = true
  config.action_mailer_default_url_options = { host: config.app_domain }
  config.action_mailer.smtp_settings = {
      address: 'smtp.gmail.com',
      port: '587',
      enable_starttls_auto: true,
      user_name: 'walimashoot@gmail.com',
      password: 'walimashoot!',
      authentication: :plain,
      domain: 'walimashoot.herokuapp.com'
  }
end
