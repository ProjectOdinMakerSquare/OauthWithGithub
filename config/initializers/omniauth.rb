OmniAuth.config.logger = Rails.logger

GITHUB_CONFIG = YAML.load_file("#{::Rails.root}/config/github.yml")[::Rails.env]

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['app_id'], ENV['secret']
end
