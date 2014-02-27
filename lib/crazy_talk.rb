require 'langlish'

class CrazyTalk < Langlish
  def initialize
    set_sentence do
      "This is a sentence to update. Once there was Little Red Riding Hood. It was the girl who wore red. One day she was on her way to Grandma's house."
    end

    on_beginning do
      "Yo adoboy"
    end

    on_end do
      "Wordup."
    end

    replace_word("the"){ "da" }
    replace_word("day"){ "dizzay" }
    end_sentences { "O po" }
  end
end