class CrazyTalk < Langlish
  def initialize
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