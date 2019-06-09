# Write your code here.
def dictionary
    { "hello" => "hi",
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
end

def word_substituter(tweet)
    tweet.split(" ").collect do |w|
        if dictionary.keys.include?(w.downcase)
            w = dictionary[w.downcase]
        else
            w
        end
    end.join(" ")
end

def bulk_tweet_shortener(bulk_tweet)
    bulk_tweet.each do |x|
        puts word_substituter(x)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    else
        tweet
    end
end

def shortened_tweet_truncator(tweet)
    if selective_tweet_shortener(tweet).length > 140
        selective_tweet_shortener(tweet)[0..136] + "..."
    else
        tweet
    end
end