def caesar_cipher(string,number)
    string=string.split(' ')
    string=string.map{|word| word.split(//).map{|l| l=~/[a-z]/ || l=~/[A-Z]/ ? (l==l.upcase ? ((l.ord+number-65)%26 +65).chr : ((l.ord+number-97)%26 +97).chr) : l}.join}
    puts string.join(' ')
end
caesar_cipher("What a string!", 5)