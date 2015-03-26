require File.expand_path('../boot', __FILE__)

require 'action_controller/railtie'
require 'active_record'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Api
  class Application < Rails::Application
    config.middleware.insert_after ActionDispatch::Callbacks, ActiveRecord::ConnectionAdapters::ConnectionManagement

  end
end
