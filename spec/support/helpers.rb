module Helpers
  module_function

  def fixtures_path
    SPEC_ROOT.join('fixtures')
  end

  def container
    Blog::Container
  end

  def app
    Blog::Application.app
  end
end
