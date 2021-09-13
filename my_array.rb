class MyArray
  attr_reader :contents

  def initialize(contents)
    @contents = contents
  end

  def flatten
    # Convert to string, remove all brackets, split back to array, convert string elements to integer
    contents.to_s.delete('[]').split(',').map(&:to_i)
  end
end
