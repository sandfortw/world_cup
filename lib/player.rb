class Player

  def initialize (hash)
   @hash = hash
  end

  def name 
    @hash[:name]
  end

  def position
    @hash[:position]
  end

end