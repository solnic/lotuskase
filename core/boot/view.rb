Blog::Container.finalize(:view) do
  require 'lotus/view'

  Lotus::View.configure do
    root(Blog::Container.root.join('web/templates'))
  end

  require 'lotus-view'
  Blog::Container.require(Blog::Container.root.join('web/views/**/*.rb').to_s)

  Lotus::View.load!
end
