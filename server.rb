require 'sinatra'
require 'haml'
require 'json'
require 'pry'
require File.expand_path('./lib/flip_talk.rb')

DEFAULT_TRANSLATION = 'FlipTalk'

get '/' do
  haml :index
end

get '/translate' do
  translation_klass = (Object.const_get params[:translation] || DEFAULT_TRANSLATION).new

  content_type :json
    { :originalText => translation_klass.say_original_sentence, :translatedText => translation_klass.say_new_sentence}.to_json
end