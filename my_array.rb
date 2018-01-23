class MyArray
  attr_reader :contents

  def initialize(contents)
    @contents = contents
  end

  def flatten
    return contents
  end
end
