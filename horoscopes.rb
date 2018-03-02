
module Horoscope
    module_function
    # loop over array horoscopes and return the item that contains the given star
    def get horoscopes, star
       horoscopes.each do |horoscope|
            if horoscope.include?(star) then
                return horoscope
            end
       end
    end

    #read the file and create an array, each item of array is one line of the file
    def generate 
        horoscopes = []
        File.open('horoscope.txt').each do |line|
            horoscopes.push(line.chomp)
        end
        # return horoscope
        horoscopes
    end        
end


