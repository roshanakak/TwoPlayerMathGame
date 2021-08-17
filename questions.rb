class Question
  attr_reader :question
  attr_reader :answer

  def initialize()
    first_number = rand(1..20)
    second_number = rand(1..20)
    @question = "#{first_number} + #{second_number} ?"
    @answer = first_number + second_number
  end

end