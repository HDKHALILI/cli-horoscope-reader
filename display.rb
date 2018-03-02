require_relative 'find'
require 'colorize'

require 'colorize'

module Display
    module_function
    def show_star star
        # uncoment for test only
        #" Your Star Sign is: #{star}"

        #comment for test only
        " Your Star Sign is: #{star}".colorize(:color => :white, :background => :blue)
        puts " #{'-' * 50}".blue
        puts " #{star} Horoscope".bold
        puts " #{'-' * 19}".blue  
    end
    
    # 
    def name name
        puts " Hi, #{name.capitalize.bold}"
    end

    # Takes horoscope and join with date and prints
    def horoscope horoscope
        puts Date.today.strftime(' %A').colorize(:color => :white, :background => :blue)
        date = Date.today.strftime('%B-%d-%Y')
        puts " #{date}, #{horoscope}".ljust(horoscope.length + 5).colorize(:color => :white, :background => :blue).rjust(horoscope.length + 5)
    end

    def show_fortune fortune
        puts " #{'-' * 50}".blue
        puts ' Your fortune cookie:'.bold
        puts ' ' + fortune
    end

    # prints logo and can be called for any ascii style logo
    def header logo
        puts ""
        puts "#{'-' * 80}".magenta
        puts logo.green
        puts "#{'-' * 80}".magenta
    end

    # takes number and return the number interpolated in string
    def lucky_number number
        " Lucky Number: #{number}"       
    end

    # takes color and display the name and it will be the same color as the name
    def lucky_color color
        string_color = color.to_sym
        color = color.capitalize.colorize(string_color)
        " Lucky Color: #{color}"
    end
end




