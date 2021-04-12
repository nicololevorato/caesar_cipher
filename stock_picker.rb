def stockPicker(days)
    profit=0;
    buy=0;
    sell=0;
    days.each_with_index do |price,index| 
    if price<days[buy] 
        if sell>index
            buy=index
            profit=days[sell]-price
            next
        end
        days.each_with_index do |price2,index2| 
        if index2>sell 
            if price2-price>profit
                profit=price2-price
                buy=index
                sell=index2    
            end
        end
        end
        end
    end
    puts [buy,sell]
    puts "for a profit of $#{days[sell]} - $#{days[buy]} == $#{profit}"
end
stockPicker([17,3,6,9,15,8,6,1,10]);