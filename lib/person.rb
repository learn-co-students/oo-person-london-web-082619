class Person 

    attr_accessor :bank_account
    attr_reader :name 


    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = hygiene
    end 

    def happiness= (happiness)  #.clamp(0,10)
        if happiness > 10 
            @happiness = 10
        elsif happiness < 0 
            @happiness = 0
        else 
            @happiness = happiness
        end 
    end 

    def hygiene= (hygiene)
        if hygiene > 10 
            @hygiene = 10
        elsif hygiene < 0 
            @hygiene = 0
        else 
            @hygiene = hygiene
        end 
    end 

    def clean?
        @hygiene > 7
    end 

    def happy?
        @happiness > 7 
    end 

    def get_paid(salary)
        @bank_account += salary 
        "all about the benjamins" 
    end 
    
    def take_bath 
        @hygiene = @hygiene + 4
        self.hygiene = @hygiene
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end 

    def work_out 
        @hygiene -= 3
        self.hygiene = @hygiene 
        @happiness += 2
        self.happiness = @happiness 
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(starter, topic)
        if topic == "politics"
            starter.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            starter.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            'blah blah blah blah blah'
        end 
    end 

     



end 