class BoardCase
  attr_accessor :value, :boardcaserow, :boardcasecol,
  def initialize(row,col)
    @boardcasevalue = nil
    @boardcaserow = row
    @boardcasecol = col
  end
end