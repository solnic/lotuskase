require 'app_helper'

RSpec.describe '/', type: :request do
  it 'returns 200' do
    get '/'
    expect(last_response).to be_ok
  end
end
