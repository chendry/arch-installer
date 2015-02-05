#!/bin/env ruby

Dir["*.sh"].sort.each_with_index do |filename, index|
  system "git mv #{filename} #{filename.gsub(/^\d+/, "%02d0" % (index + 1))}"
end
