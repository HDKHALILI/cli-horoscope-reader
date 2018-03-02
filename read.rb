require_relative 'display'
require_relative 'generate'
require_relative 'horoscopes'
require_relative 'prompt'
require 'colorize'

module Read
    # colors that the lucky color is picked from
    colors = ['white', 'red', 'green', 'magenta', 'cyan', 'blue']

    # The title logo source
    logo = File.read('zodiac_logo.txt')
    # The footer logo source
    footer = File.read('footer.txt')
    # Display Zodiac Logo
    Display::header logo
    puts ''
    print " Enter to continue, [Control + C] to end program"
    response = gets
    name = Prompt::get_name
    date_of_birth = Prompt::get_date_of_birth

    file = 'fortune_cookies.txt'
    puts "#{'-' * 50}".blue
    Display:: name name
    zodiac_sign = Find::star date_of_birth
    
    Display::show_star zodiac_sign 

    Display::horoscope Horoscope::get Horoscope::generate, zodiac_sign
    Display::show_fortune Generate::get file

    puts "#{'-' * 50}".blue
    print Display::lucky_number Generate::lucky_number
    print '             ' 
    puts Display::lucky_color Generate::lucky_color colors
    Display::header footer
    
end

# call the Read module
Read
