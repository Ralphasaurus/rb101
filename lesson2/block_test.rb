def blockie(&block)
  block
end

blockie { puts "Hullo from inside the method!" }

# Nothing is printed to the the screen because we haven't activated the block with
# the .call method. A proc is returned from the method.