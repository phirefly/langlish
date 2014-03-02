require File.expand_path('./lib/langlish.rb')

class FlipTalk < Langlish
  def initialize(original_sentence)
    super do
      set_sentence do
        original_sentence
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
  end
end
