#!/usr/bin/env ruby 

require 'nokogiri'


f = File.open(ARGV[0])
doc = Nokogiri::XML(f)
f.close

puts doc