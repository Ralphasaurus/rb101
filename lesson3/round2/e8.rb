flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p flintstones.select { |k, _| k == "Barney" }.to_a.flatten

# or...

p flintstones.assoc("Barney")