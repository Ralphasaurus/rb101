def diamond(n)
  1.upto(n) { |row| puts (('*' * row).center(n)) if row.odd? }
  (n - 1).downto(1) { |row| puts (('*' * row).center(n)) if row.odd? }
end

diamond(5)