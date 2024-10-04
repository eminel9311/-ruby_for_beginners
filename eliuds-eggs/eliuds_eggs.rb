module EliudsEggs
  def self.egg_count(dec_num)
    # 1. dec_num.to_s(2) convert số thập phân thành số nhị phân
    # 2. .chars convert string thành array
    # 3. đếm các phần tử có giá trị = 1
    dec_num.to_s(2).chars.count("1")
  end
end