class Strategy
  FILE_PATH = File.dirname(__FILE__) + '/../tmp/strategy.c'
  JANKEN_PATH = File.dirname(__FILE__) + '/../janken/'

  def initialize(text)
    @text = text
  end

  def write
    File.open(FILE_PATH, 'w') do |f|
      f.puts @text
    end
  end

  def slice_template(text)
    text ||= File.read(JANKEN_PATH + '/template/player1.h').to_s
    each_line = text.split(/\r\n|\n/)
    s = get_index_of_target(each_line, 'PLAYER_STRATEGY_START')
    e = get_index_of_target(each_line, 'PLAYER_STRATEGY_END')
    header = each_line.slice(0..(s - 1)).join('\n')
    footer = each_line.slice((e + 1)..-1).join('\n')
    [header, footer]
  end

  def slice
    each_line = @text.split(/\r\n|\n/)
    s = get_index_of_target(each_line, 'PLAYER_STRATEGY_START')
    e = get_index_of_target(each_line, 'PLAYER_STRATEGY_END')
    each_line.slice((s + 1)...e).join('\n')
  end

  def exist?
    File.exist?(FILE_PATH)
  end

  private

  def get_index_of_target(arr, target)
    arr.each.with_index do |line, i|
      return i if line =~ /#{target}/
    end
  end
end

