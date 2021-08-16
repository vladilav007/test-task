textArray = gets.chomp.chars
n = gets.chomp.to_i

def encrypt(text, n)
  count = 0
  while count < n
    evenText = text.values_at(* text.each_index.select {|i| i.odd?})
    oddText = text.values_at(* text.each_index.select {|i| i.even?}) 
    text = (evenText + oddText)
    count += 1
  end 
  puts(text.join.downcase)   
end

def decrypt(encrypted_text, n)
  counter = 0
  while counter < n
    firstHalf = encrypted_text.slice(0,encrypted_text.length/2)
    secondHalf = encrypted_text.slice(encrypted_text.length/2,encrypted_text.length)
    result = []
    count = 0
    while count < encrypted_text.length
      if not secondHalf.empty?
        result.push(secondHalf[0])
        secondHalf.shift
      end
      if not firstHalf.empty?
        result.push(firstHalf[0])
        firstHalf.shift
      end
      count += 1
    end
    counter += 1
    encrypted_text = result
  end
  puts (result.join.downcase) 
end

#Choose an action
#encrypt(textArray, n)
#decrypt(textArray, n)