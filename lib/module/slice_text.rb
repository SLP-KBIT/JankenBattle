module SliceText
  def slice_without(text)
    each_line = text.split(/\r\n|\n/)
    s = get_index_of_target(each_line, 'PLAYER_STRATEGY_START')
    e = get_index_of_target(each_line, 'PLAYER_STRATEGY_END')
    header = each_line.slice(0..(s - 1))
    footer = each_line.slice((e + 1)..-1)
    [header, footer]
  rescue => e
    puts e
    [each_line, nil]
  end

  def slice_within(text)
    each_line = text.split(/\r\n|\n/)
    s = get_index_of_target(each_line, 'PLAYER_STRATEGY_START')
    e = get_index_of_target(each_line, 'PLAYER_STRATEGY_END')
    each_line.slice((s + 1)...e)
  rescue => e
    puts e
    each_line
  end

  def get_index_of_target(arr, target)
    arr.each.with_index do |line, i|
      return i if line =~ /#{target}/
    end
    fail 'No Match Target'
  end

  module_function :slice_without, :slice_within
end

