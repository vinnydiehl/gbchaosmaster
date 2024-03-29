require File.expand_path("../boot", __FILE__)

# Load frameworks:
require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"
require "sprockets/railtie"

if defined?(Bundler)
  # Precompile assets at production.
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module Gbchaosmaster
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified
    # here. Application configuration should go into files in
    # config/initializers -- all .rb files in that directory are automatically
    # loaded.

    # Set Time.zone default to and make Active Record auto-convert to EST.
    config.time_zone = "Eastern Time (US & Canada)"

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

    # Use SQL instead of Active Record's schema dumper when creating the
    # database. This is necessary if your schema can't be completely dumped by
    # the schema dumper, like if you have constraints or database-specific
    # column types.
    # config.active_record.schema_format = :sql

    # Enforce whitelist mode for mass assignment.
    # This will create an empty whitelist of attributes available for
    # mass-assignment for all models in your app. As such, your models will
    # need to explicitly whitelist or blacklist accessible parameters by using
    # an attr_accessible or attr_protected declaration.
    # config.active_record.whitelist_attributes = true

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = "1.0"

    # All assets that aren't included in a manifest still need to be
    # precompiled.
    config.assets.precompile << "projects.css"
  end
end
