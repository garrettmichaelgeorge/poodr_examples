class References
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def diameters
    # 0 is rim, 1 is tire
    data.collect do |cell|
      cell[0] + (cell[1] * 2)
    end
  end
end
