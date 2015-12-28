require 'app_helper'

RSpec.describe '/', type: :request do
  it 'returns 200' do
    get '/'

    expect(last_response).to be_ok
    expect(last_response.body).to include('<h1>Hello World</h1>')
  end
end
