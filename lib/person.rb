# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness
        @happiness = 10 if happiness > 10
        @happiness = 0 if happiness < 0
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        @hygiene = 10 if hygiene > 10
        @hygiene = 0 if hygiene < 0
    end

    def happy?
        return true if @happiness > 7
        return false
    end

    def clean?
        return true if @hygiene > 7
        return false
    end

    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        return '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        self.happiness=(@happiness + 3)
        person.happiness=(person.happiness + 3)
        "Hi #{person.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(@happiness - 2)
            person.happiness=(person.happiness - 2)
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness=(@happiness + 1)
            person.happiness=(person.happiness + 1)
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end