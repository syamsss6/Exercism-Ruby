class SpaceAge
  attr_reader :seconds
  def initialize(seconds)
    @seconds = seconds
  end


  def orbitals_in_second
    earth_second = 60 * 60 * 24 * 365.25
    {
     'earth' => 1 * earth_second,
     'mercury' => 0.2408467 * earth_second,
     'venus' => 0.61519726 * earth_second,
     'mars' => 1.8808158 * earth_second,
     'jupiter' => 11.862615 * earth_second,
     'saturn' => 29.447498 * earth_second,
     'uranus' => 84.016846 * earth_second,
     'neptune' => 164.79132 * earth_second
    }
  end
  def calculate_year
    orbitals_in_second.each do |planet, in_second|
      define_method("on_#{planet}") do
        op = @seconds / in_second
        return op.round(2)
      end
    end
  end
end
