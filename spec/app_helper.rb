require SPEC_ROOT.join('../core/boot').realpath

require 'rack/test'
require 'slim'
require 'capybara/rspec'

Capybara.app = Blog::Application.app
Capybara.app_host = 'http://localhost'

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.before(:suite) do
    Blog::Application.app.freeze
  end

  config.include Helpers
  config.include Rack::Test::Methods, type: :request
end
