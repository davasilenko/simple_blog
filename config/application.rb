# config/application.rb

require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module SimpleBlog
  class Application < Rails::Application
    config.load_defaults 7.0


    # Настройки конфигурации для приложения, движков и рейлтайсов.
    #
    # Эти настройки можно переопределить в отдельных средах с помощью файлов
    # в config/environments, которые обрабатываются позже.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
