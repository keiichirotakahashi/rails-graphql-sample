require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
# require 'active_model/railtie'
# require 'active_job/railtie'
require 'active_record/railtie'
# require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
# require 'action_mailbox/engine'
# require 'action_text/engine'
# require 'action_view/railtie'
# require 'action_cable/engine'
# require 'rails/test_unit/railtie'

Bundler.require(*Rails.groups)

module RailsGraphqlSample
  class Application < Rails::Application
    config.autoload_lib(ignore: %w(assets tasks))
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    config.i18n.default_locale = :ja
    config.api_only = true
    config.generators do |g|
      g.sysyem_tests = nil
    end
  end
end
