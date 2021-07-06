class Person

  attr_reader :name 
  attr_accessor :bank_account, :happiness, :hygiene

def initialize(name, happiness=8, hygiene=8)
  @name = name
  @bank_account = 25
  @happiness = happiness
  @hygiene = hygiene
end

def happiness=(points)
  @happiness = points
 if points  > 10
  @happiness = 10
 elsif points < 0 
   @happiness = 0
 else
  @happiness = points
 end
end

 def hygiene=(points)
  @hygiene = points
   if points > 10
     @hygiene = 10
    elsif points < 0 
       @hygiene = 0
    else 
      @hygiene = points
   end
 end

def happy?
    if @happiness > 7
      true
    else
      false
    end
end

def clean?
   if @hygiene > 7
    true
  else
    false
  end
end

 def get_paid(salary)
     @bank_account += salary
     p "all about the benjamins"
 end

 def take_bath
  self.hygiene=(@hygiene += 4)
     
  p "♪ Rub-a-dub just relaxing in the tub ♫"
 end

 def work_out
  self.happiness=(@happiness += 2)
  self.hygiene=(@hygiene -= 3)
  p "♪ another one bites the dust ♫"
 end

 def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  p "Hi #{friend.name}! It's #{self.name}. How are you?"
 end
 
 def start_conversation(person, topic)
 
     if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
     
     elsif topic == "weather"
     self.happiness += 1
     person.happiness += 1
     "blah blah sun blah rain"

     else
      "blah blah blah blah blah"
     end
    

 end
  


  
end
