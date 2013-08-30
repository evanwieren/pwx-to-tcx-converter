#!/usr/bin/env ruby

require "rexml/document"
#file = File.new( "mydoc.xml" )
#doc = REXML::Document.new file

doc = REXML::Document.new File.new(ARGV[0])
doc.elements.each('pwx/workout/sample') do |foo|
	#puts foo.element('timeoffset')
	#puts foo.methods
	#puts foo.class
	sample = {}

	#puts foo.attributes

	foo.each do |item| 
		sample[item.name] = item.text
	end

	puts sample


end