class Submit
  PATH = File.dirname(__FILE__) + '/../tmp/'

  def initialize(id, text)
    @text = text
    @path = PATH + "/strategy#{id}.c"
  end

  def write
    File.open(@path, 'w') { |f| f.puts @text }
  end

  def exist?
    File.exist?(@path)
  end
end

