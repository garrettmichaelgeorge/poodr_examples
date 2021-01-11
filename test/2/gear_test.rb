require_relative '../test_helper_lite'
require_relative '../../2/gear'

describe Gear do
  def create_gear(*args)
    Gear.new(*args)
  end

  subject { create_gear }

  describe '#ratio' do
    subject { create_gear(52, 11, 26, 1.5) }

    it 'calculates the ratio' do
      _(subject.gear_inches).must_be_within_epsilon 137.09
    end
  end
end
