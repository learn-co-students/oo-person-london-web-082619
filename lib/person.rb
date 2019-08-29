
#require 'pry'
class Person
    
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name, happiness=8, hygiene=8)
     @name = name
     @bank_account = 25
     @happiness = happiness
     @hygiene = hygiene
    end

    def happiness=(level)
        @happiness = level.clamp(0,10)
    end

  def hygiene=(level)
       @hygiene = level.clamp(0,10)
  end
 
  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
      "all about the benjamins"
  end


  def take_bath
    self.hygiene=(@hygiene += 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

def work_out
self.happiness=(@happiness += 2)
self.hygiene=(@hygiene -= 3)
  "♪ another one bites the dust ♫"
end


  def call_friend(friend)
    self.happiness += 3
    friend.happiness +=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (person, topic)
    if topic == “politics”
        self.happiness=(self.happiness - 2)
        person.happiness=(person.happiness - 2)
        return “blah blah partisan blah lobbyist”
    elsif topic == “weather”
        self.happiness=(self.happiness + 1)
        person.happiness=(person.happiness + 1)
        return “blah blah sun blah rain”
    else
        return “blah blah blah blah blah”
    end
end
   def start_conversation (person, topic)
    if topic == “politics”
        self.happiness=(self.happiness - 2)
        person.happiness=(person.happiness - 2)
        return “blah blah partisan blah lobbyist”
    elsif topic == “weather”
        self.happiness=(self.happiness + 1)
        person.happiness=(person.happiness + 1)
        return “blah blah sun blah rain”
    else
        return “blah blah blah blah blah”
    end
end
