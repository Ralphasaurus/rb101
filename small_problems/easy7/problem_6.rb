# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.




def staggered_case(string)
  counter = 0
  string.chars.each do |item|
    if item =~ /[a-z]/i && counter.even?
      item.upcase!
      counter += 1
    elsif item =~ /[a-z]/i && counter.odd?
      item.downcase!
      counter += 1
    end
  end.join
end



# Test Cases
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'