
#require 'pry'
class Person
  #Create a class person that is initialized with a name that cannot be changed
    
    attr_accessor :bank_account
    #attr_accessor an ready and change getter and setter
    attr_reader :name, :happiness, :hygiene
    #attr_reader only can ready but cannot change anything that's why I setting the name
    #happiness and hygiene here for not be changed.

    def initialize(name, happiness=8, hygiene=8)
      #I initialize name, happiness and hygiene = 8 because they should start with 8 points each.
     @name = name
     @bank_account = 25
     @happiness = happiness
     @hygiene = hygiene
    end

    def happiness=(level)
        @happiness = level.clamp(0,10)
      #clamp method is added to the Comparable module. 
      #This method can be used to clamp an object within a specific range of values.
      #clamp method takes min and max as two arguments to define the 
      #range of values in which the given argument should be clamped.
    end

  def hygiene=(level)
       @hygiene = level.clamp(0,10)
  end
 
  def happy?
    @happiness > 7
    #The happy method should return true if the happiness points exceed seven.
    #Otherwise they should return false. Thats why I put happiness great than 7
  end

  def clean?
    @hygiene > 7
     #The hygiene method should return true if the happiness points exceed seven.
    #otherwise they should return false.
  end

  def get_paid(salary)
    #The get_paid method should accept a salary amount and add this to the person's 
    #bank account.  
    @bank_account += salary
    #Then the method should return a string "all about the benjamins"
      "all about the benjamins"
  end


  def take_bath
    #the take_bath method should increment the person's hygiene points 
    #by 4
    self.hygiene=(@hygiene += 4)
    #and return a string "♪ Rub-a-dub just relaxing in the tub ♫"
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

def work_out
  #this method should increment the person's happyness by two points
self.happiness=(@happiness += 2)
#decrease their hygiene by three points
self.hygiene=(@hygiene -= 3)
#and return the Queen lyrics
  "♪ another one bites the dust ♫"
end



  def call_friend(friend)
    #this method should accept another instace of th person class, or friend
    #the method should increment the caller and the callee's happiness points by 3
    self.happiness += 3
    friend.happiness +=3
    #if Stella call her friend Felix, the method should return 
    #Hi Felix! It's Stella. How are you?
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  

def start_conversation(person, topic)
  #This method should accdept two arguments.
  #The person to start a conversation with and the topic of conversation.
  objects = [self, person]
  #If topic is politics
  if topic == "politics"
    
    objects.each { |o| o.happiness -= 2}
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    objects.each { |o| o.happiness += 1}
    return "blah blah sun blah rain"
  end
  return "blah blah blah blah blah"
  end
end

