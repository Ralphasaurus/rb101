# Each UUID consists of 32 hexadecimal characters, and is typically broken
# into 5 sections like this 8-4-4-4-12 and represented as a string.


def uuid_generator
  hex = %w( 0 1 2 3 4 5 6 7 8 9 a b c d e f )
  uuid = []
  8.times { uuid << hex[rand(0..16)] }
  3.times do
    uuid << '-'
    4.times { uuid << hex[rand(0..16)] }
  end
  uuid << '-'
  12.times { uuid << hex[rand(0..16)] }
  uuid.join
end

p uuid
p uuid_generator
