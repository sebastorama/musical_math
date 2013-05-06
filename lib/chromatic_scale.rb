class ChromaticScale
  attr_accessor :ascending_scale, :descending_scale

  def initialize
    @ascending_scale  = %w(a a# b c c# d d# e f f# g g#)
    @descending_scale = %w(a bb b c db d eb e f gb g ab)
  end

  def note_for_number number, mode = :ascending
    if mode == :ascending
      @ascending_scale[number*2]
    else
      @descending_scale[number*2]
    end
  end
end

