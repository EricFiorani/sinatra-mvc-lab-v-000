class PigLatinizer

  def consonant?(word)
    !word.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    #Starts with a vowel?
    if !consonant?(word[0])
      word = word + "w"

    #Starts with 3 consonants??
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)

    #2 consonants?
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)

    #1 consonant? =O
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def piglatinize_phrase(phrase)
    phrase.split.collect {|word| piglatinize_word(word) }.join(" ")
  end

  def piglatinize(user_input)
    x = (user_input.split(" ").length == 1) ? piglatinize_word(user_input) : piglatinize_phrase(user_input)

    puts x

    x
  end

end
