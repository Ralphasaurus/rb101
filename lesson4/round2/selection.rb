produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  new_hash = {}
  hash.each do |k,v|
    if v == 'Fruit'
      new_hash[k] = v
    end
  end
    new_hash
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
p produce