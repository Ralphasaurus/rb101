alphabet = 'abcdefghijgklmgnopqrgstuvwxyz'


def select_g(string)
selected_char = [] # initialize a new variable and assign it to an empty array
counter = 0 # the counter 

  loop do # start loop
    current_char = string[counter] # initalize a new local variable and assign it to the
                                   # input string's first element, which uses the counter variable
                                   # to denote the selected element in the string.
    #*********THE IF STATEMENT IS THE SELECTION CRITERIA****************
    if current_char == "g" # if this variable is equal to the character "g" do...
      selected_char << current_char # calling the append method to insert the current char variable
    end # end the if statement
    #*******************************************************************
    counter += 1 # increment the counter variable by 1
    break if counter >= string.size # break out of the loop if the counter variable is greater than
                                    # or equal to the size/lenth of the input string
    
  end # end the loop
  p selected_char # call the inspect method on the selected_char array
end

select_g(alphabet) #call the select_g method and pass the alphabet string in as an argument.


