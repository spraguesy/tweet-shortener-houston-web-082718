# Write your code here.

dictionary = {
  "hello" => 'h1',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  "be" => 'b',
  "you" => 'u',
  "at" => '@',
  "and" => '&'
}

def word_substituter (sting)
  sting.split(" ")
  puts sting
  new_string = []
  sting.each do |word|
    print word
    dictionary.each do |key, value|
      if word == key
        new_string.push(value)
      else
        new_string.push(word)
      end
    end
  end
end
