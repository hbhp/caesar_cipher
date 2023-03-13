def caesar(string, shift)
  new_array = []
#convert string to array
  to_array = string.split(//)
#convert characters to ordinals
  to_ord=to_array.map(&:ord)
#sort ordinals
  to_ord.each do |n|
    if n >= 65 && n <=90           #upcase
      if n + shift > 90
        new_array.push(n + shift-26)
      else
        new_array.push(n + shift)
      end
    elsif n >= 97 && n <=122       #downcase
        if n + shift > 122
          new_array.push(n + shift-26)
        else
          new_array.push(n + shift)
        end
    else                           #special characters
      new_array.push(n)
    end
  end
#convert ordinals to characters
    back_again = new_array.map(&:chr)
#convert array to string
    new_string = back_again.join
    p new_string
end

caesar('What a string!', 5)
