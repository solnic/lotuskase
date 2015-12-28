require 'blog/application'

Blog::Application.routes do
  get '/', to: 'home#hello'
end
