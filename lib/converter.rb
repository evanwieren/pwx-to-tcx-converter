#!/usr/bin/env ruby

require "rexml/document"
require "builder"
#file = File.new( "mydoc.xml" )
#doc = REXML::Document.new file

doc = REXML::Document.new File.new(ARGV[0])

xml = Builder::XmlMarkup.new( :target => $stdout, :indent => 2 )
xml.instruct! :xml, :version => "1.0", encoding: "UTF-8", standalone: "no"


count = 0

xml.TrainingCenterDatabase do
	xml.Activities do
		doc.elements.each('pwx/workout/sample') do |foo|
			#puts foo.element('timeoffset')
			sample = {}

			#puts foo.attributes
				xml.sample(count)

			foo.each do |item| 
				sample[item.name] = item.text
			end

			#puts sample

			count += 1

		end
	end
end

#!/usr/bin/ruby

#require 'builder'

#favorites = {
#  'candy' => 'Neccos', 'novel' => 'Empire of the Sun', 'holiday' => 'Easter'
#}

#xml = Builder::XmlMarkup.new( :target => $stdout, :indent => 2 )

#xml.instruct! :xml, :version => "1.1", :encoding => "US-ASCII"

#xml.favorites do 
# favorites.each do | name, choice |
#  xml.favorite( choice, :item => name )
# end
#end
