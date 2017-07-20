class BoardCase
  attr_accessor :value

  def initialize()
    @value = nil
    # @boardcaserow = row
    # @boardcasecol = col
  end

  def value_to_s
    (@value == nil)? @value = ' ' : @value = @value.to_s
    return @value
  end
  
end