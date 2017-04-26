class Team

  attr_accessor :name, :motto

  ALL = []
  HEROES = []

  def initialize(name:, motto:)
    @name = name
    @motto = motto
    ALL << self
  end

  def self.all
    ALL
  end

  def add_superhero(hero)
    HEROES << hero
  end

  def superhero
    HEROES
  end

end
