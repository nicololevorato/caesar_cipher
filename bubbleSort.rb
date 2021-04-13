def bubbleSort(array)
    i=array.length-1
    while i>0 do
        for z in 1..i do
            if array[z-1]>array[z] 
                temp=array[z]
                array[z]=array[z-1]
                array[z-1]=temp
            end
        end
        i-=1
    end
    puts array
end

bubbleSort([4,3,78,2,0,2])