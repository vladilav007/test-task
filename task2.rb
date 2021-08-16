def getMostCommonWords(text)
    words = text.downcase.gsub(/[^\p{L}\s\d]/,'').split(" ")
    entries = {}
  
    words.each do |word|
      if entries.key?(word)
        entries[word] = entries[word] + 1
      else
        entries[word] = 1
      end
    end
  
    if entries.length < 3
      return []
    else
      sorted = entries.sort_by{ |key, value| -value } 
  
      return sorted.slice(0, 3).map{|pair| pair[0]}
    end
  end
  
  puts getMostCommonWords("Executes code if the conditional is true. If the conditional is not true, code specified in the else clause is executed.")
  
  puts getMostCommonWords("An if expression's conditional is separated from code by the reserved word then, a newline, or a semicolon.")
  
  puts getMostCommonWords("The expression specified by the when clause is evaluated as the left operand. If no when clauses match, case executes the code of the else clause.")
  
  
  