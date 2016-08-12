#write your code here
def translate phrase

	vowels = ['a','e','i','o','u']
	punctuations_list = ['.','!','?',',',':',";"]
	phrase.split(' ').map do |word|

		punct_count = 0
		exit = false

		word.split('').reverse_each do |char|
			unless exit
				if punctuations_list.include? char
					punct_count+=1
				else
					exit = true
				end
			end
		end

		punctuations = ''
		if punct_count > 0
			punctuations = word[word.length-punct_count..word.length-1]			
			word = word[0..-1*(punct_count+1)]
		end

		cons = 0
		exit = false

		cap = (word == word.capitalize)? true: false
		word.split('').each do |letter|
			unless exit
				if not vowels.include? letter
					cons+=1
				else
					exit = true
				end
			end
		end

		if word[cons-1..cons] == 'qu'
			cons+=1
		end

		if cons == 0
			word+='ay'+punctuations
		else
			word=word[cons..word.length-1]+word[0..cons-1]+'ay'+punctuations
		end

		word = (cap)? word.capitalize: word
	end.join(' ')
end
