class Player
  attr_accessor :name, :symb
  attr_writer :victory

  def initialize(name,symb)
    @name = name
    @symb = symb
    @victory = nil
  end

end