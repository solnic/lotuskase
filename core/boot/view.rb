require 'lotus/view'

Blog::Container.finalize(:view) do
  Lotus::View.configure do
    root(Blog::Container.root.join('web/templates'))
  end

  Lotus::View.load!
end
