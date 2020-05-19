require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MiGranEmpresa
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    #Check if we use Docker to allow docker ip through web-console
    if ENV['DOCKERIZED'] == 'true'
      config.web_console.whitelisted_ips = ENV['DOCKER_HOST_IP']
    end
    config.web_console.whitelisted_ips = '104.130.212.199'
    config.web_console.whiny_requests = false
    #config.web_console.whitelisted_ips = '104.130.212.199'
    #config.web_console.whitelisted_ips = '201.103.242.244'
    #config.web_console.whiny_requests  = false
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
