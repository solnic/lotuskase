module Views
  module Home
    class Hello
      include Lotus::View

      template 'home/hello'
      format :html
    end
  end
end
