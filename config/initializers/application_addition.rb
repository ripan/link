if Rails.env == 'development'
  ENV['HOSTNAME'] = 'https://link.fwd.wf'  # must be same as a hostname
  ENV['GOOGLE_KEY'] = '241216475329-utg68abne3379alt40f664ko81bb7888.apps.googleusercontent.com'
  ENV['GOOGLE_SECRET'] = '_HyyD1FMlQu_CCI4ldkEMHPA'
end