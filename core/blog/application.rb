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

    require 'lotus-controller'
    container.require(root.join('web/routes').to_s)
    container.require(root.join('web/controllers/**/*.rb').to_s)

    require 'lotus-view'
    container.require(root.join('web/views/**/*.rb').to_s)
  end
end
