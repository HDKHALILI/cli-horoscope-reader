require 'zodiac'
require 'date'

module Find
    module_function
    def star date_of_birth
        star_sign = Date.parse(date_of_birth).zodiac_sign
    end
end



