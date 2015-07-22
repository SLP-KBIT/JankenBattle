require File.dirname(__FILE__) + '/template'
require File.dirname(__FILE__) + '/submit'

class Strategy
  PATH = File.dirname(__FILE__) + '/../janken/strategy/'

  def initialize(id, text)
    @path = PATH + "/player#{id}.h"
    @id = id
    @text = text
  end

  def template
    @template ||= Template.new(@id)
  end

  def submit
    @submit ||= Submit.new(@id, @text)
  end

  def write
    header, footer = template.slice_text
    main = submit.slice_text
    text = [header, main, footer].flatten
    File.open(@path, 'w') { |f| f.puts text }
    @path
  rescue => e
    puts e
    nil
  end

  def exist?
    File.exist?(@path)
  end
end

