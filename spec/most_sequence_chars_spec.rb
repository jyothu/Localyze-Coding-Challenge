# frozen_string_literal: true

require 'rspec'
require_relative '../most_sequence_chars'

describe 'most_sequence_chars' do
  let(:input_and_output) do
    {
      'Pressuuuuuure' => 'uuuuuu',
      'Boat' => 'B',
      'A hot  dog' => '  '
    }
  end

  it 'returns most sequencial charectors on the string' do
    input_and_output.each do |string, expected_output|
      expect(most_sequence_chars(string)).to eq(expected_output)
    end
  end
end
