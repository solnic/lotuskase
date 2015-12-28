require 'blog/application'

Blog::Application.routes do
  get '/', to: 'controllers/home#hello'
end
