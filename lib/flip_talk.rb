require 'langlish'

class FlipTalk
  Langlish.new do
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

    say_original_sentence
    say_new_sentence

  end
end