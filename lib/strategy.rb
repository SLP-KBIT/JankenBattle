class Strategy
  FILE_PATH = File.dirname(__FILE__) + '/../tmp/strategy.c'

  def initialize(text)
    @text = text
  end

  def write
    File.open(FILE_PATH, 'w') do |f|
      f.puts @text
    end
  end

  def exist?
    File.exist?(FILE_PATH)
  end
end

