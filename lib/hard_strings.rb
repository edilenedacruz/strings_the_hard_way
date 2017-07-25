class HardString
  def length(string)
    count = 0
    string.split("").each do |char|
      count += 1
    end
    count
  end

  def upcase(string)
    final = Array.new
    upper_lower = ("a".."z").zip("A".."Z").to_h
    string.split("").each do |char|
      final.push(upper_lower[char])
    end
    final.join
  end

  def sub(string, remove, add)
    final = string.chars
    to_be_removed = final.index(remove)
    final[to_be_removed] = add
    final.join
  end

  def gsub(string, remove, add)
    string.chars.map do |char|
      if char == remove
        char = add
      else
        char
      end
    end.join
  end

  def split(string)
    final = []
    word = ""
    string.chars.each do |char|
      if char == " "
      final << word
      word = ""
      else
        word += char
      end
    end
    final.push(word)
  end

  def split_with_arg(string, argument)
    final = []
    word = ""
    string.chars.each do |char|
      if char == ","
      final << word
      word = ""
      else
        word += char
      end
    end
    final.push(word)
  end

  def substring(string, beg_index, end_index)
    final = ""
    string.chars.each_with_index do |char, index|
      if index >= beg_index && index <=  end_index
        final += char
      end
    end
    final
  end
end
