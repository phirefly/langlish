require 'sinatra'
require 'haml'
require 'json'
require 'pry'
require File.expand_path('./lib/flip_talk.rb')

get '/' do
  haml :index
end

get '/translate' do
  fliptalk = FlipTalk.new

  content_type :json
    { :originalText => fliptalk.say_original_sentence, :translatedText => fliptalk.say_new_sentence}.to_json
end