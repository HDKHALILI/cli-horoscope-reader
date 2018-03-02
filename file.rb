
module Files
    module_function
    # take a file and make an array, 
    # each item is one line from the file
    def tell file
        fortunes = []
        File.open(file).each do |line|
            fortunes.push(line.chomp)
        end
        fortunes
    end
end



