require 'spec_helper'

def app
  Sinatra::Application
end

describe 'Langlish App' do

  let( :expected_response ) {
    { 'originalText' => "My unbelievable original text!",
      'translatedText' => "Alam mo ba My unbelievable original text! Talaga!"}
  }

  include Rack::Test::Methods

  it "GET root" do
    get '/'
    expect(last_response).to be_ok
  end

  describe 'POST translate' do
    it "default translation" do
      post '/translate', {:translation=>"FlipTalk", :original_text => "My unbelievable original text!"}
      expect(last_response).to be_ok
      expect(JSON.parse(last_response.body)).to eq( expected_response )
    end
  end
end