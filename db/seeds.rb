
words = File.read("db/words.txt").split("\n")
words.each do |w|
  Word.create(:name=>w,:letters=>w.downcase.split("").sort.join)
end