require 'sinatra'
require 'haml'
require 'json'
require 'pry'
require File.expand_path('./lib/flip_talk.rb')

get '/' do
  haml :index
end

get '/translate' do
  fliptalk = Langlish.new do
    set_sentence do
      "This is a sentence to update. Once there was Little Red Riding Hood. It was the girl who wore red. One day she was on her way to Grandma's house."
    end

    on_beginning do
      "Alam mo ba"
    end

    on_end do
      "Talaga!"
    end

    replace_word("the"){ "ano" }
    replace_word("Grandma"){ "Lola" }
    end_sentences { "O po" }

  end

  content_type :json
    { :originalText => fliptalk.say_original_sentence, :translatedText => fliptalk.say_new_sentence}.to_json
end