if Rails.env == 'development'
  ENV['HOSTNAME'] = 'http://link.dev'  # must be same as a hostname
  ENV['GOOGLE_KEY'] = '241216475329-1p4p8asjpg09ustd4f0qf3p66tivvqkp.apps.googleusercontent.com'
  ENV['GOOGLE_SECRET'] = 'hcUeqrDqBZVlELMaqmS_HwEF'
end