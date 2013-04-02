class Word < ActiveRecord::Base
  # Remember to create a migration!


  def self.get_anagrams(word)
    Word.find_all_by_letters(word.downcase.split("").sort.join)
  end
end