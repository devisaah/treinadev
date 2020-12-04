class Word
  def vowels_count(phrase)
    phrase_not_accent = remove_accents(phrase)
    return phrase_not_accent.downcase.chars.count {|str| str =~ /[aeiouy]/i}
  end

  def consonants_count(phrase)
    phrase_not_accent = remove_accents(phrase)
    return phrase_not_accent.downcase.chars.count {|str| str =~ /[bcdfghjklmnpqrstvwxz]/i}
  end

  def remove_accents(phrase)
    accents = {
      ['á','à','â','ä','ã'] => 'a',
      ['Ã','Ä','Â','À'] => 'A',
      ['é','è','ê','ë'] => 'e',
      ['Ë','É','È','Ê'] => 'E',
      ['í','ì','î','ï'] => 'i',
      ['Î','Ì'] => 'I',
      ['ó','ò','ô','ö','õ'] => 'o',
      ['Õ','Ö','Ô','Ò','Ó'] => 'O',
      ['ú','ù','û','ü'] => 'u',
      ['Ú','Û','Ù','Ü'] => 'U',
      ['ç'] => 'c', ['Ç'] => 'C',
      ['ñ'] => 'n', ['Ñ'] => 'N'
    }
    accents.each do |ac,rep|
      ac.each do |s|
        phrase = phrase.gsub(s, rep)
      end
    end
    phrase = phrase.gsub(/[^a-zA-Z0-9\. ]/,"")
    phrase = phrase.gsub(/[ ]+/," ")
    phrase = phrase.gsub(/ /,"-")

    phrase
  end

end
