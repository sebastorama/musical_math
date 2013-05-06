class ChromaticScale
  attr_accessor :ascending_scale, :descending_scale

  def initialize
    @ascending_scale  = %w(a a# b c c# d d# e f f# g g#)
    @descending_scale = %w(a bb b c db d eb e f gb g ab)
  end

  def note_for_number number, mode = :ascending
    index = (number*2)%12
    if mode == :ascending
      @ascending_scale[index]
    else
      @descending_scale[index]
    end
  end
end

