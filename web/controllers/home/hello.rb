module Controllers
  module Home
    class Hello
      include Lotus::Action

      def call(params)
        self.body = Views::Home::Hello.render(format: :html)
      end
    end
  end
end
