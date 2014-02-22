require 'spec_helper'

def app
  Sinatra::Application
end

describe 'Langlish App' do

  let( :expected_response ) {
    { 'originalText' => 'original sentence', 'translatedText' => 'translated text'}
  }

  include Rack::Test::Methods

  it "GET root" do
    get '/'
    expect(last_response).to be_ok
  end

  it "GET translate" do
    FlipTalk.should_receive(:new)
    get '/translate'

    expect(last_response).to be_ok
    expect(JSON.parse(last_response.body)).to eq( expected_response )


  end
end