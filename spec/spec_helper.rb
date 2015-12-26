begin
  require 'byebug'
rescue LoadError; end

ENV['RACK_ENV'] = 'test'

SPEC_ROOT = Pathname(__FILE__).dirname

Dir[SPEC_ROOT.join('support/*.rb')].each(&method(:require))

require SPEC_ROOT.join('../core/blog/container')

RSpec.configure do |config|
  config.disable_monkey_patching!
end
