# Given a string that consists of some words (all lowercased) and an
# assortment of non-alphabetic characters, write a method that 
# that string with all of the non-alphabetic characters replaced by spaces.
# If one or more non-alphabetic characters occur in a row, you should only
# have one space in the result (the result should never have consecutive spaces)

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  allowed_chars = []
  text.chars.each do |character|
    if ALPHABET.include?(character)
      allowed_chars << character
    else allowed_chars << " " unless allowed_chars.last == " "
    end
  end
  allowed_chars.join
end



p cleanup("---what's my +*& line?") == ' what s my line '