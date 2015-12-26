require_relative 'container'

module Blog
  Import = Blog::Container.import_module

  def self.Import(*args)
    Import[*args]
  end
end
