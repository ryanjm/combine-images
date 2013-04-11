#!/usr/bin/env ruby

if ARGV.length < 2
  puts "need more arguments"
else
  puts ARGV
  first, last = ARGV.shift, "/Users/ryanjm/Desktop/#{ARGV.last}.png"
  while (ARGV.size > 1)
    second = ARGV.shift
    puts "+append #{first} #{second} #{last}"
    %x(convert +append '#{first}' '#{second}' '#{last}')
    first = last
  end
end
