class PigLatinizer

  def piglatinize(word)
    piglatin = ""
    if word[0].downcase =~ /[aeiou]/
      piglatin = word + "way"
    else
      index = first_vowel(word)
      piglatin = word[index..-1] + word[0..(index-1)] + "ay"
    end
  end

  def multiple_words_to_pig_latin(sentence)
    sentence.split.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

  def first_vowel(word)
    word.downcase.split(//).each_with_index do |letter, i|
      if letter =~ /[aeiou]/
        return i
      end
    end
  end
end
