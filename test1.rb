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

    def self.all
        BARTENDERS
    end

    def all
        BARTENDERS
    end

    def make_drink
        @cocktail_ingredients = []
        choose_liquor
        choose_mixer
        choose_garnish
        return "Here is your drink. It contains #{@cocktail_ingredients}"
      end
     
      private
     
      def choose_liquor
        @cocktail_ingredients.push("whiskey")
      end
     
      def choose_mixer
        @cocktail_ingredients.push("vermouth")
      end
     
      def choose_garnish
        @cocktail_ingredients.push("olives")
      end
end


   
  phil = Bartender.new("Phil")
  p phil.intro
  take = Bartender.new("Tak")
  dave = Bartender.new("David")
  p take.intro
  p Bartender.all
  p take.all
  take.choose_liquor
  Bartender.choose_liquor
  
