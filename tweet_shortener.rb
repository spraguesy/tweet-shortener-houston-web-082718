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

  tweet.split(" ").collect do |word|
    new_word = word
    dictionary.each do |long_word, short_word|
      if word == long_word
        word = short_word
      end
    end
    new_word
  end
  tweet
end
