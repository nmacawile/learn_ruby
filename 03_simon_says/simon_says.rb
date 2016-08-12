#write your code here
def echo word
	word
end

def shout word
	word.upcase
end

def repeat word, times=2
	((word+' ')*times)[0..-2]
end

def start_of_word word, n=1
	word[0..n-1]
end

def first_word sentence
	sentence.split(' ')[0]
end

def titleize title
	small = ['for','and','nor','but','or','yet','so','the','a','an','aboard','about','above','across','after','against','along','amid','among','anti','around','as','at','before','behind','below','beneath','beside','besides','between','beyond','but','by','concerning','considering','despite','down','during','except','excepting','excluding','following','for','from','in','inside','into','like','minus','near','of','off','on','onto','opposite','outside','over','past','per','plus','regarding','round','save','since','than','through','to','toward','towards','under','underneath','unlike','until','up','upon','versus','via','with','within','without']
	title = title.capitalize

	title.split.map do |x|
		(small.include? x)? x : x.capitalize
	end.join(' ')
end