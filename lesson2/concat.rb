arr = ["duck", "god", "hippo", "cat", "chicken"]

def joiner(arr)
  change = ""
    arr.map! {|string| change = change + string}
    p change
end

joiner(arr)