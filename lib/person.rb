require 'pry'
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize (name)
        @name= name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness=(new_number)
        if  new_number < 0
            @happiness=0
        elsif new_number > 10
            @happiness=10
        else 
            @happiness=new_number
        end        
    end
    
    def hygiene=(new_number)
        if  new_number < 0
            @hygiene=0
        elsif new_number > 10
            @hygiene=10
        else 
            @hygiene=new_number
        end          
    end

    def happy?
        self.happiness > 7 ? true : false 
    end
    
    def clean?
        self.hygiene > 7 ? true : false 
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
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
        self.happiness +=3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"        
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -=2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness +=1
            friend.happiness +=1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end            

    end    
end    

# binding.pry