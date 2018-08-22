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

  new_tweet = []
  tweet.split(" ").each do |word|
    new_word = word

    dictionary.each do |long_word, short_word|
      if word == long_word
        new_word = short_word
      end
    end
    new_tweet.push(new_word)
    new_word
  end
  new_tweet.join(" ")
end

def selective_tweet_shortener (tweet)
  if tweet.length > 140
    word_substituter(tweet)
  elsif tweet.split("").length < 140
    tweet
  end
end

def shortened_tweet_truncator (tweet)
  new_tweet = ''
  if word_substituter(tweet).length > 140
    tweet.split("").each do |char|
        if new_tweet.length <= 140
          new_tweet = new_tweet + char
        end
    end
    new_tweet = new_tweet + "..."

  else
    new_tweet = tweet
  end
  new_tweet
end
