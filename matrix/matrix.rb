class Matrix
  def initialize(str)
    @matrix = str.split(/\n/);
    
  end

  def row(i)
    index = i > 0 ? i.to_i - 1 : 0
    @matrix[index].split(/[\s]/).map{|str| str.to_i}
  end

  def column(i)
    index = i > 0 ? i.to_i-1 : 0
    @matrix.map{ |str| str.split(/[\s]/)[index].to_i}
  end
  
end