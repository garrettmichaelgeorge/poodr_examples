require_relative '../test_helper_lite'
require_relative '../../2/gear'

describe Gear do
  def create_gear(*args)
    Gear.new(*args)
  end

  subject { create_gear(52, 11) }

  describe '#gear_inches' do
    let(:wheel) { Minitest::Mock.new }
    subject { create_gear(52, 11, wheel) }

    it 'calculates the ratio' do
      wheel.expect(:diameter, 29)
      _(subject.gear_inches).must_be_within_epsilon 137.09
    end

    it 'sends wheel.diameter' do
      wheel.expect(:diameter, 1)
      subject.gear_inches
      wheel.verify
    end
  end

  describe '#ratio' do
    it 'calculates the gear inches' do
      _(subject.ratio).must_be_within_epsilon 4.73
    end
  end
end
