def sort_array_asc(array)
    array.sort
end    


def sort_array_desc(array)
    array.sort do |a, b|
        b <=> a
    end   
end

def sort_array_char_count(array)
    array.sort do |a, b|
        a.length <=> b.length
    end
end    


def swap_elements(array)
    two = array[1]
    array[1] = array[2]
    array[2] = two
    array
end    

def reverse_array(array)
    array.sort do |a, b|
        array.index(b) <=> array.index(a)
    end
end    

def kesha_maker(array)
    new_array = []
    array.each do |string|
        blown_apart = string.split("")
        blown_apart[2] = "$"
        back_to_string = blown_apart.join
        new_array.push(back_to_string)
    end
    new_array
end    

def find_a(array)
    array.select do |word|
        word.start_with?("a")  
    end  
end

def sum_array(array)
    array.inject(:+)
end 

def add_s(array)
    array.collect.each_with_index do |word, idx|
        if idx != 1
            word += "s"
        else
            word = word
        end
    end
end