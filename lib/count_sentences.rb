require 'pry'

class String

  def sentence?
    #this is the substring method, which returns a string of just the agrument string (truthy value) if it has it
    #and if it does not contain the argument string, returns nil (falsey value)
    if self['.']
      true
    else
      false
    end 
  end

  def question?
    #so this is the more accurate way, as using substring as above will return true if there is a period
    #anywhere in the string, not just at the end, but i'll keep the first one like that for posterity
    self[self.length-1] == '?'
  end

  def exclamation?
    self[self.length-1] == '!'
  end

  def count_sentences
    selfSplit = self.split(" ")
    sentences = 0
    selfSplit.each do |line| 
      if line.sentence?
        sentences += 1
      elsif line.question?
        sentences += 1
      elsif line.exclamation?
        sentences += 1
      end 
    end 
    sentences 
  end
end