#!/usr/bin/env ruby

if ARGV.length <= 2
  puts "need more arguments"
else
  # reverse order or images to show up in order they were taken
  args = ARGV.reverse
  # last argument was random name for new image
  last, first = "/Users/ryanjm/Desktop/#{args.shift}.png", args.shift
  while (args.size > 0)
    second = args.shift
    %x(convert +append '#{first}' '#{second}' '#{last}')
    first = last
  end
end
