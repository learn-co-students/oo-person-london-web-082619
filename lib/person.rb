# your code goes here
class Person 

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene


    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness 
        @hygiene = hygiene
    end

    def happiness = (points)
        @happiness = points
         @happiness  = 10 if @happiness >10
            @happiness = 0 if @happiness < 0
    end   

    def hygiene  = (points)
        @hygiene = points
        @hygiene =10 if @hygiene > 10
        @hygiene = 0  if @hygiene < 0 
    end


    def happy?
        if self.happiness > 7 
            true
        else 
            false 
        end
    end

    def clean?

        if @self.hygiene > 7
            true 
        else 
            false 
       end
    end 

    def get_paid(salary)
    
        @bank_account =+ salary
        
       return "all about the benjamins"

    end

    def take_bath

        self.hygiene.points += 4
        return "Rub-a-dub just relaxing in the tub"
    end 

        def work_out
            self.happiness += 2
            self.hygiene -= 3
            return "another one bites the dust"
        end

        def call_friend(friend)
            self.happiness +=3
            friend.happiness += 3
            return "Hi #{friend.name}! It's #{self.name}. How are you?"
        end

        def start_conversation (name, topic)
             if topic == "poltics"
                self.happiness -= 2 
                name.happiness -= 2
                return "blah blah partisan blah lobbyist"
             elseif topic == "weather"
             self.happiness += 1
             name.happiness += 1
             return "blah blah sun blah rain"
             else
                return "blah blah blah blah blah"
             end 
            end 
end



