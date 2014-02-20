require 'sinatra'
require 'haml'
require 'json'
require 'pry'
require File.expand_path('./lib/flip_talk.rb')

get '/' do
  haml :index
end

get '/translate' do
  # lang = params[:lang] ||= 'default'
  flip_talk = FlipTalk.new

  content_type :json
    { :originalText => 'original sentence', :translatedText => 'translated text'}.to_json
end