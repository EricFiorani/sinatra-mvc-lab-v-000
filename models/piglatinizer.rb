class PigLatinizer

  attr_reader :words, :word
  
  def piglatinize(words)
    words=word.split(" ")
    words.each do |x|
    if ["a","e","i","o","u"].include?x[0,1]
      x << ("ay")
    else
      until ["a","e","i","o","u"].include?x[0,1]
        x << ("#{x[0,1]}")
        x[0,1]=""
      end
      x << "ay"
      end
    end
    words.join(" ")
  end


end
