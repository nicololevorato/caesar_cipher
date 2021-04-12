def substrings(string,dictionary)
    string=string.tr("|,|_'/!?",'').downcase.split(' ')
    newHash=string.reduce(Hash.new(0)) do |h,word|
        dictionary.each{|substring| h[substring]+=(word.include?(substring) ? 1 : 0)}
        h
    end
    puts newHash.select{|key,value| value>0}
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)