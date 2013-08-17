require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], {:redirect_path => "/gmail/contacts", :ssl_ca_file => "/usr/lib/ssl/certs/ca-certificates.crt"}
end