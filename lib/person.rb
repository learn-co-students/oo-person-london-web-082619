
class Person 
 attr_accessor :bank_account
 attr_reader :name, :hygiene, :happiness


    def initialize(name)
        @hygiene = 8
        @happiness = 8
        @bank_account= 25
        @name = name 
    end




    def happiness=(level)
        @happiness = level.clamp(0,10)
    end

    def hygiene=(level)
        @hygiene = level.clamp(0,10)
    end

    def happy?
        self.happiness > 7
        #why does this work with @ and self? What would be different about this method that would mean I 
        #would require self? Is it when you give parameters to the original method?
    end

    def clean? 
        self.hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(recipient, topic)
        if topic == 'politics'
            self.happiness -= 2
            recipient.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1
            recipient.happiness += 1
            'blah blah sun blah rain'
        else 
            "blah blah blah blah blah"
        end
    end
end
