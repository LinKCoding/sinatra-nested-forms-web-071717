class Ship
  attr_accessor :name, :booty, :type

  @@all = []

  def initialize(params)
    @name = params[:name]
    @booty = params[:booty]
    @type = params[:type]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
