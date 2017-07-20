class BoardCase
  attr_accessor :value, :boardcaserow, :boardcasecol

  def initialize(row,col)
    @value = nil
    @boardcaserow = row
    @boardcasecol = col
  end

  def value_to_s
    (@value == nil)? @value = 'empty' : @value = @value.to_s
    return @value
  end
end