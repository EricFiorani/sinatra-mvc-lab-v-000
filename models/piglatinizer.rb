class PigLatinizer

  def piglatinize(word)
    result = ""
    if word[0].downcase =~ /[aeiou]/
      result = word + "way"
    else
      index = first_vowel(word)
      result = word[index..-1] + word[0..(index-1)] + "ay"
    end
  end

  def multiple_words_to_pig_latin(sentence)
    text.split.collect do |word|
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
