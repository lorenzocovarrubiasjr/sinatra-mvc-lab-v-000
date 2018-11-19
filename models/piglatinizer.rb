class PigLatinizer
  attr_accessor :user_phrase
  
  def piglatinize(user_phrase)
    @user_phrase = user_phrase
    piglatinized_phrase = []
    @words = @user_phrase.split(' ')
    @words.each do |word|
      if word[0].downcase.match(/[aeiou]/)    #vowels
        word = word + "way"
        piglatinized_phrase << word 
      elsif word[0].downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && word[1].downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && word[2].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)     #constonants up to the 3rd letter 
            removed_letters = word.slice!(0..2)
            word = word + removed_letters + "ay"
            piglatinized_phrase << word 
      elsif word[0].downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && word[1].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
            removed_letters = word.slice!(0..1)
            word = word + removed_letters + "ay"
            piglatinized_phrase << word 
      elsif word[0].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
            removed_letters = word.slice!(0)
            word = word + removed_letters + "ay"
            piglatinized_phrase << word 
          end 
      end 
    piglatinized_phrase.join(" ")
  end
  
end 