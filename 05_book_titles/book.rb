class Book
# write your code here
	
	attr_reader :title

	def title=(value)

		small = ['for','and','nor','but','or','yet','so','the','a','an','aboard','about','above','across','after','against','along','amid','among','anti','around','as','at','before','behind','below','beneath','beside','besides','between','beyond','but','by','concerning','considering','despite','down','during','except','excepting','excluding','following','for','from','in','inside','into','like','minus','near','of','off','on','onto','opposite','outside','over','past','per','plus','regarding','round','save','since','than','through','to','toward','towards','under','underneath','unlike','until','up','upon','versus','via','with','within','without']
		value.capitalize!

		@title = value.split.map do |x|
			(small.include? x)? x : x.capitalize
		end.join(' ')
	end	
end
