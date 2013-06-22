require_relative '../lib/langlish'

describe Langlish do
  let (:dsl) {
    Langlish.new do
      set_sentence do
        "The force is strong with this one."
      end

      on_beginning do
        "Alam mo ba"
      end

      on_end do
        "Talaga!"
      end
    end
  }

  it 'sets the original sentence' do
    dsl.instance_of?(Langlish).should be_true
    dsl.original_sentence.should == "The force is strong with this one."
  end

  describe '#say_original_sentence' do
    it 'returns the original sentence' do
      dsl.say_original_sentence.should == "The force is strong with this one."
    end
  end

  describe '#say_new_sentence' do
    it 'returns the new sentence' do
      dsl.say_new_sentence.should == "Alam mo ba The force is strong with this one. Talaga!"
    end
  end
end

