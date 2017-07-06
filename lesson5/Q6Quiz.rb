# Without running the code attempt to work out what the last three lines will output.

a = 'hi'
english_greetings = ['hello', a, 'good morning']

greetings = {
  french: ['bonjour', 'salut', 'allo'],
  english: english_greetings,
  italian: ['buongiorno', 'buonasera', 'ciao']
}

greetings[:english][1] = 'hey'


greetings.each do |language, greeting_list|
  greeting_list.each { |greeting| greeting.upcase! }
end

puts a # => 'hi' never changes because we never reassigned a
puts english_greetings[1] # => 'HEY' we reassigned 'hi' with 'hey' which gets permenantly changed into upcase
puts greetings[:english][1] # => 'HEY' is now permenantly 'HEY'

# the sub-arrays got mutated 
