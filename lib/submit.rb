require File.dirname(__FILE__) + '/module/slice_text'

class Submit
  include SliceText

  PATH = File.dirname(__FILE__) + '/../tmp/'

  def initialize(id, text)
    @text = text
    @path = PATH + "/strategy#{id}.c"
  end

  def slice_text
    slice_within(@text)
  end

  def write
    File.open(@path, 'w') { |f| f.puts @text }
  end

  def exist?
    File.exist?(@path)
  end
end

