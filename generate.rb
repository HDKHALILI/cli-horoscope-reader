require_relative 'file'

module Generate 
    
    module_function

    # get file and call Files::tell and return a random item from an array 
    def get file
        fortune = Files::tell file
        cookies = fortune[rand(fortune.length)]
    end

    # return random number from 1 to 100
    def lucky_number 
        lucky_number = rand(1..100)
    end

    # takes an array return one random item from it
    def lucky_color colors
        lucky_color = colors[rand(colors.length)]
    end
end

