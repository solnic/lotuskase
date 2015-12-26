require 'lotus/router'

module Blog
  class Application
    def self.app
      Lotus::Router.new do
        get '/', to: ->(env) { [200, {}, ['Welcome to Lotus::Router!']] }
      end
    end
  end
end
