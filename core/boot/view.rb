Blog::Container.finalize(:view) do |container|
  require 'lotus/view'

  Lotus::View.configure do
    root(container.root.join('web/templates'))
  end

  require 'lotus-view'
  container.require(container.root.join('web/views/**/*.rb'))

  Lotus::View.load!
end
