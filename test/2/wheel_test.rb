require_relative '../test_helper_lite'
require_relative '../../2/wheel'

describe Wheel do
  subject { Wheel.new(26, 1.5) }

  describe '#circumference' do
    it 'calculates the circumferences' do
      _(subject.circumference).must_be_within_epsilon 91.11
    end
  end
end
