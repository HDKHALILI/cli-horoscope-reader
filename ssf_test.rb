# select a name and date and its zodiac sign, this will be our expect
# we will feed the test method those date and see if the match

# actual = hadi, 3/3/1993 

# expect = Hi Hadi
# expect  = Your star sign is Capricorn

# require "date" 
# puts Date.today.strftime ("%A")
# puts Date.today.strftime ("%B %d, %Y")

require 'colorize'
require_relative 'find'
require_relative 'display'
require_relative 'generate'

def expect actual, message, expected
    if actual == expected then 
        puts "  PASS #{message}".colorize(:green)
    else
        puts "  FAIL #{message} expected #{expected}, but got #{actual}".colorize(:red)
    end
end

def test_for_find_star
    actual = Find::star("1/1/1970")
    expect = "Capricorn"
    message = "Test for Star Finder"
    expect(actual,message,expect)
end

def test_display_show_star
    actual = Display::show_star Find::star("3/3/1970")
    # actual = 'Your star sign is: Capricorn'
    expect = " Your Star Sign is: Pisces"
    message = "Test for Show Star"
    expect(actual.to_s,message,expect)
end

def test_show_fortune
    file = 'fortune_cookies.txt'
    response = Generate::get file
    actual =  response.class
    expect = "String"
    message = "Test for Generate get method"
    expect(actual.to_s,message,expect)
end
# we are checking for a string because we are getting a random item from an array of strings

def test_numbers
    response = Generate::lucky_number
    actual =  response.class
    expect = Integer
    message = "Test for Generate get number"
    expect(actual,message,expect)
end

def test_color
    colors = ['white', 'red', 'green', 'magenta', 'cyan', 'blue']
    response = Generate::lucky_color colors
    actual =  response.class
    expect = "String"
    message = "Test for Generate get color"
    expect(actual.to_s,message,expect)
end
#we are checking for a string because we are getting a random colour from an array of strings

def test_lucky_number
    actual = Display::lucky_number 14
    expect = " Lucky Number: 14"
    message = "Test for Display Lucky No"
    expect(actual,message,expect)
end

def test_lucky_color
    actual = Display::lucky_color 'Red'
    expect = " Lucky Color: Red"
    message = "Test for Display Lucky Color"
    expect(actual,message,expect)
end


test_for_find_star
test_display_show_star
test_show_fortune
test_numbers
test_color
test_lucky_number
test_lucky_color


