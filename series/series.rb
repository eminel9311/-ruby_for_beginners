
class Series
  def initialize(str)
    @input = str  
  end

  `
  series.chars:
  Phương thức chars chuyển chuỗi series thành một mảng các ký tự.
  Ví dụ: "49142".chars sẽ tạo ra mảng ["4", "9", "1", "4", "2"].
  each_cons(n):

  Đây là phương thức thuộc Enumerable trong Ruby, có chức năng lặp qua các nhóm liên tiếp gồm n phần tử trong mảng.
  Ví dụ: ["4", "9", "1", "4", "2"].each_cons(3) sẽ tạo ra các nhóm sau:
  ["4", "9", "1"]
  ["9", "1", "4"]
  ["1", "4", "2"]
  map(&:join):

  Phương thức map được sử dụng để biến đổi từng phần tử của mảng.
  &:join là cách viết tắt của map { |group| group.join }. Nó gọi phương thức join trên từng nhóm con (là một mảng các ký tự), gộp chúng lại thành một chuỗi.
  Ví dụ: ["4", "9", "1"].join sẽ thành "491".
  Sau khi áp dụng map(&:join) cho các nhóm con, ta sẽ nhận được kết quả:
  ["491", "914", "142"]
  `
  def slices(num)
    raise ArgumentError, "error" if num > @input.length

    @input.chars.each_cons(num).map(&:join)
  end
end