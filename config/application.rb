require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DeviseTest
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

module SimpleGraph
  class Application < Rails::Application
    # エンドポイントのIPアドレス:ポート番号
    config.server = 'localhost:3000'
    # エンドポイント
    config.endpoint = 'http://' + config.server + '/data'
  end
end