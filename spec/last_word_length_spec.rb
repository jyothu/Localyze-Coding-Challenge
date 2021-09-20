require 'rspec'
require_relative '../last_word_length'

describe 'last_word_length' do
  context 'when nil passed' do
    let(:string) { nil }

    it 'returns invalid argument error' do
      expect { last_word_length(string) }.to raise_error('Invalid argument!')
    end
  end

  context 'when empty string passed' do
    let(:string) { '' }

    it 'returns invalid string error' do
      expect { last_word_length(string) }.to raise_error('Invalid String!')
    end
  end

  context 'when invalid string passed' do
    let(:string) { '%%blah' }

    it 'returns invalid string error' do
      expect { last_word_length(string) }.to raise_error('Invalid String!')
    end
  end

  context 'when valid string passed' do
    let(:input_and_output) do
      {
        'Hello World' => 5,
        ' fly me   to   the moon  ' => 4,
        'luffy is still joyboy' => 6
      }
    end

    it 'returns length of the last word in given string' do
      input_and_output.each do |string, expected_output|
        expect(last_word_length(string)).to eq(expected_output)
      end
    end
  end
end
