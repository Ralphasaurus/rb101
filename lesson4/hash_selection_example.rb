produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(input)
  input.select {|k,v| v == "Fruit"}
end



p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}