require 'spec_helper'

describe Langlish do
  context 'non-dsl' do
    let (:dsl) {
      Langlish.new('The force is strong with this one.') do
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

  context 'dsl' do

    describe '#set_sentence' do
        let(:langlish) {
          Langlish.new('say something') do
          end
        }

      it 'sets instance variables' do
        langlish.instance_variable_get(:@original_sentence).should == 'say something'
      end

      it 'uses an existing sentence'

    end
  end

end

