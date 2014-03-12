class Langlish
  attr_reader :original_sentence

  def initialize(sentence, &block)
    @original_sentence = sentence
    instance_eval(&block) if block
  end

  def set_sentence(&block)
    @original_sentence
  end

  def on_beginning(&block)
    @beginning = block.call
  end

  def on_end(&block)
    @end = block.call
  end

  def say_original_sentence
    @original_sentence
  end

  def say_new_sentence
    "#{@beginning} #{@original_sentence} #{@end}"
  end

  def replace_word(word, &block)
    @original_sentence.gsub(/#{word}(\s*)/i, "#{block.call} ")
  end

  def end_sentences
    #todo
  end

end
