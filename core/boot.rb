require 'logger'

require_relative 'blog/container'

Blog::Container.finalize! do |container|
  container.register(:logger, Logger.new(container.root.join('log/app.log')))
end

require 'blog/application'
