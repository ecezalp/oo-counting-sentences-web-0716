require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else 
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else 
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else 
      false
    end
  end

  def count_sentences
    s_count = 0
    self.split(" ").each do |x|
    if x.sentence? || x.question? || x.exclamation?
      s_count +=1
    end
  end
  s_count
end
end