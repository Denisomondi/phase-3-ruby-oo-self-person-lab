# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
  

        def initialize(name)
            @name = name
            @bank_account = 25
            @happiness = 8
            @hygiene = 8
        end
 

    def happiness=(value)
        @happiness = if value > 10 
            10 
        elsif value < 0
            0
        else
            value
        end
    end

    def hygiene=(value)
        @hygiene = if value > 10 
            10 
        elsif value < 0
            0
        else
            value
    end
end

     def clean?
        @hygiene > 7 ? true : false
     end

     def happy?
        @happiness > 7 ? true : false
     end

     def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
     end

     def take_bath
        self.hygiene += 4
        # @hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
     end

     def work_out
        self.happiness += 2
        self.hygiene  -= 3
        # @happiness += 2
        # @hygiene -= 3
        return "♪ another one bites the dust ♫"
     end

     def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"      
        # return "Hi Felix! It's Penelope. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2  
            friend.happiness -= 2  
            return  'blah blah partisan blah lobbyist'
            elsif topic == "weather"
                self.happiness += 1  
            friend.happiness += 1  
                return 'blah blah sun blah rain'
                else
                    return 'blah blah blah blah blah'
    end
end

end
