Devise.setup do |config|

  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..128
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  config.omniauth :facebook, '802713769796218', '745bff6b43db477a12f444c26caa3deb'
  # config.omniauth :twitter, 'key', 'secret'
  # config.omniauth :linked_in, 'key', 'secret'
end