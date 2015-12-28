require 'lotus/router'
require_relative 'container'

module Blog
  class Application
    def self.routes(&block)
      @routes = Lotus::Router.new(&block)
    end

    def self.container
      Container
    end

    def self.app
      self
    end

    def self.root
      container.root
    end

    def self.call(*args)
      @routes.call(*args)
    end
  end
end
