class Acronym
  def self.abbreviate(name)
    # name.upcase.split(/[\s\-]/).reject(&:empty?).map{|item| item[0]}.join
    name.scan(/\b\w/).join.upcase
  end
end