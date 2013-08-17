OmniAuth.config.full_host = ENV['HOSTNAME']
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], :scope =>'https://mail.google.com/mail/feed/atom/'
end