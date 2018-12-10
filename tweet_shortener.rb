# Write your code here.
def dictionary
  dict = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  dict
end

def word_substituter(tweet)
  tweet_arr = tweet.split(" ")
  dict = dictionary
  subs = dict.keys
  tweet_arr.each_with_index do |word, index|
    if subs.include?(word.downcase)
      tweet_arr[index] = dict[word.downcase]
    end
  end
  str = tweet_arr.join(" ")
  str
end

def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
      tweet = word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
      tweet = tweet[0..136] + "..."
  end
  tweet
end
