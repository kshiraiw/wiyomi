require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "action_mailer/railtie"
require "rails/test_unit/railtie"
require 'sprockets/railtie'

Bundler.require(:default, Rails.env)

module Wiyomi
  class Application < Rails::Application
  end
end
