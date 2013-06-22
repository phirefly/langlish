class Langlish
  def initialize(&block)
    instance_eval(&block) if block
  end

  def set_sentence(&block)
    @original_sentence = block.call
  end

  def on_beginning(&block)
    @beginning = block.call
  end

  def on_end(&block)
    @end = block.call
  end

  def say_original_sentence
    puts "*"*50
    puts @original_sentence
  end

  def say_new_sentence
    puts "#{@beginning} #{@sentence} #{@end}"
  end

  def replace_word(word, &block)
    @sentence = @original_sentence.gsub(/#{word}(\s*)/i, "#{block.call} ")
  end

  def end_sentences
    #todo
  end

end


#-----------------

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


Langlish.new do
  set_sentence do
    "This is a sentence to update. Once there was Little Red Riding Hood. It was the girl who wore red. One day she was on her way to Grandma's house."
  end

  on_beginning do
    "Yo dawg"
  end

  on_end do
    "Word."
  end

  replace_word("the"){ "da" }
  replace_word("day"){ "dizzay" }
  end_sentences { "O po" }

  say_original_sentence
  say_new_sentence

end
