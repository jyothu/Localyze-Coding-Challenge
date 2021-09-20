require 'rspec'
require_relative '../max_subarray_sum'

describe 'max_subarray_sum' do
  let(:input_and_output) do
    {
      [2, -4, 6, 8, -10, 100, -6, 5] => [2, 5],
      [-2, -4, -6, -8, -10, -100, -6, -5] => [0, 0]
    }
  end

  it 'returns the position of the first and last element of the subset with maximum sum' do
    input_and_output.each do |string, expected_output|
      expect(max_subarray_sum(string)).to eq(expected_output)
    end
  end
end
