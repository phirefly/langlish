require 'spec_helper'

def app
  Sinatra::Application
end

describe 'Langlish App' do

  let( :expected_response ) {
    { 'originalText' => "This is a sentence to update. Once there was Little Red Riding Hood. It was the girl who wore red. One day she was on her way to Grandma's house.",
      'translatedText' => "Alam mo ba This is a sentence to update. Once there was Little Red Riding Hood. It was the girl who wore red. One day she was on her way to Lola 's house. Talaga!"}
  }

  let(:flip_talk_mock) { mock(FlipTalk) }

  include Rack::Test::Methods

  it "GET root" do
    get '/'
    expect(last_response).to be_ok
  end

  describe 'GET translate' do
    it "default translation" do
      get '/translate'

      expect(last_response).to be_ok
      expect(JSON.parse(last_response.body)).to eq( expected_response )
    end
  end
end