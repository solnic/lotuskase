Blog::Container.finalize(:controller) do |container|
  require 'lotus/controller'

  container.require(container.root.join('web/routes'))
  container.require(container.root.join('web/controllers/**/*.rb'))
end
