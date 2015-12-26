require 'dry/component/container'

module Blog
  class Container < Dry::Component::Container
    env = ENV.fetch('RACK_ENV', 'development').to_sym

    configure(env) do |config|
      config.name = :application
      config.auto_register = 'lib'
    end

    load_paths!('lib', 'core')
  end
end
