require 'spec_helper'

def app
  Sinatra::Application
end

describe 'Langlish App' do

  include Rack::Test::Methods

  it "says hello" do
    get '/'
    expect(last_response).to be_ok
  end
end