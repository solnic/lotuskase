Blog::Container.finalize(:controller) do
  require 'lotus/controller'

  Blog::Container.require(Blog::Container.root.join('web/routes').to_s)
  Blog::Container.require(Blog::Container.root.join('web/controllers/**/*.rb').to_s)
end
