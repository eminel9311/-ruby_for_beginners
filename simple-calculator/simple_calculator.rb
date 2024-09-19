class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError if first_operand.class == String || second_operand.class == String
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation
    begin
      result = "#{first_operand} #{operation} #{second_operand}"
      "#{first_operand} #{operation} #{second_operand} = #{eval(result)}"
    rescue ZeroDivisionError => e
      "Division by zero is not allowed."
    ensure
      
    end
  end

  class UnsupportedOperation < StandardError
  end
end
