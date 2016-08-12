class Timer
  #write your code here
  def initialize
  	@seconds = 0
  end

  def seconds
  	@seconds
  end

  def seconds=value
  	@seconds = value.to_i
  end

  def time_string
  	hrs = (@seconds/3600)
  	mins = (@seconds%3600)/60
  	secs = (@seconds%3600)%60
  	"#{self.padded(hrs)}:#{self.padded(mins)}:#{self.padded(secs)}"
  end

  def padded value
  	value = value.to_s
  	'0'*(2-value.length)+value
  end

end
