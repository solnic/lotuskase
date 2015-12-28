Blog::Container.finalize(:controller) do |container|
  require 'lotus/controller'

  container.require(container.root.join('web/routes').to_s)
  container.require(container.root.join('web/controllers/**/*.rb').to_s)
end
