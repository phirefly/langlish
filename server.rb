require 'sinatra'
require 'haml'
require 'json'

get '/' do
  haml :index
end

get '/translate' do
  content_type :json
    { :originalText => 'original text', :translatedText => 'translated text' }.to_json
end