class Note
  attr_accessor :value, :ascending_scale, :descending_scale

  def initialize note
    @ascending_scale  = %w(a a# b c c# d d# e f f# g g#)
    @descending_scale = %w(a bb b c db d eb e f gb g ab)
    @value = @ascending_scale.index(note) || @descending_scale.index(note)
  end

  def + other
    other = (other * 2).to_i
    self.class.new(@ascending_scale[(value+other)%12])
  end

  def name
    @ascending_scale[@value]
  end

  def flat_name
    @descending_scale[@value]
  end
end
