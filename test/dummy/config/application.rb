require File.expand_path('../boot', __FILE__)

# require 'rails/all'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)
require 'marionette_modal_rails'

module Dummy
  class Application < Rails::Application
  end
end

