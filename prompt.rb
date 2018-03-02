require 'colorize'

module Prompt
    module_function

    def get_name
        print " Please enter your name: ".green
        name = gets.chomp
        while name.length < 3 do 
            print ' Please enter valid name '
            name = gets.chomp
        end
        name
    end

    def get_date_of_birth
        print " Please enter your date of birth: ".green
        date_of_birth = gets.chomp
        while date_of_birth.length < 8 do 
            print ' Please enter a valid DOB '
            date_of_birth = gets.chomp
        end
        date_of_birth
    end
end
