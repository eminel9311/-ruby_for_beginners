

class Phrase
  def initialize(str)
    # gán giá trị lúc khởi tạo và chuyển sang chữ thường
    @title = str.nil? ? '' : str.downcase
  end
  
  def word_count
    #Biểu thức \b[\w']+\b giúp lấy ra các từ và giữ nguyên các từ có dấu nháy đơn (contractions như "that's", "we're").
    words = @title.scan(/\b[\w']+\b/)
    
    #Tạo 1 hash mới
    word_count = Hash.new(0)

    #Lặp trong mảng từ tăng lên 1 nếu có từ lặp lại
    words.each{|word| word_count[word] += 1}
    word_count
  end
end
