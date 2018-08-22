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

def word_substituter (tweet)
  dictionary.each do |long, short|
    puts "#{long} #{short}"
  end
end
