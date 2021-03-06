require File.dirname(__FILE__) + '/module/slice_text'

class Template
  include SliceText

  PATH = File.dirname(__FILE__) + '/../janken/template/'

  def initialize(id, text = nil)
    @path = PATH + "/player#{id}.h"
    text ||= File.read(@path)
    @text = text
  end

  def slice_text
    slice_without(@text)
  end

  def exist?
    File.exist?(@path)
  end
end

