def oxford_comma(array)
  capacity = array.length 
  lastElement = array[array.length-1]
  
  case 
  #returns string without formatting if 1 element
  when capacity == 1 
    array.join
  #adds and for 2 elements  
  when capacity == 2 
    array.join(" and ")
  
  #adds commas and final and for 3 elements
  #kiwi durian starfruit
  #kiwi, durian, and starfruit 
  #kiwi, durian, starfruit
  when capacity == 3 
    array.pop()
    array.push(" and ")
    newString = array.join(", ")
    newString << lastElement
    newString
    
  #adds commas and final and for 4+ elements
  when capacity > 3
    array.join(", ")
  end
end