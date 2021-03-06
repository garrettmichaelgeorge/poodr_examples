require_relative '../test_helper_lite'
require_relative '../../2/wheel'

describe Wheel do
  subject { Wheel.new(26, 1.5) }

  describe '#diameter' do
    it 'calculates the diameter' do
      _(subject.diameter).must_be_within_epsilon 29
    end
  end

  describe '#circumference' do
    it 'calculates the circumferences' do
      _(subject.circumference).must_be_within_epsilon 91.11
    end
  end
end
