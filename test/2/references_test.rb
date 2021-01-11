require_relative '../test_helper_lite'
require_relative '../../2/references'

describe References do
  let(:data) { [[622, 20], [622, 23], [559, 30], [559, 40]] }
  subject { References.new(data) }

  describe '#diameters' do
    it 'calculates the diameters for the data' do
      _(subject.diameters).must_equal [662, 668, 619, 639]
    end
  end
end
