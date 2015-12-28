module Home
  class Hello
    include Lotus::Action

    def call(params)
      self.body = 'hello world'
    end
  end
end
