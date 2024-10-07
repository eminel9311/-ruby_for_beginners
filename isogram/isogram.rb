module Isogram
  def self.isogram?(input)
    # Tìm và xóa bỏ các khoảng trống và dấu -
    # Trả về 1 mảng các ký tự thỏa mãn điều kiện
    # Nối các ký tự trong mảng và chuyển về chữ thường
    clearned_input = input.scan(/[^\s-]/).join.downcase

    # dùng hàm uniq để trả ra 1 mảng các ký tự duy nhất, so sánh độ dài với mảng clean phía trên
    clearned_input.chars.uniq.length == clearned_input.chars.length
  end
end