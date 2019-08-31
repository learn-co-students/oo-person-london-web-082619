class Bartender
    attr_accessor :name
   
    BARTENDERS = []

    def initialize(name)
      @name = name
      BARTENDERS << self
    end
   
    def intro
      "Hello, my name is #{name}!"
    end
  end
   
  phil = Bartender.new("Phil")
  p phil.intro
  take = Bartender.new("Tak")
  dave = Bartender.new("David")
  p take.intro