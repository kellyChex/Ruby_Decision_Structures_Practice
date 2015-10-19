class Response
  @@responses = []
  @@dummies = []

  def initialize question, answers
    @question = question.downcase
    @answers = answers
  end #initialize

  def self.add_response question, *answers
    @@responses << new(question, answers)
  end #add_response

  def self.add_dummies *answers
    @@dummies = answers
  end #add_dummies

  def self.get_answer question
    responses = @@responses.select{|r| r.good_for? question}
    if responses.length > 0
      responses.sample.get_answers.sample
    else
        @@dummies.sample
    end #if2
  end #get_answer

  # def switch_case question
  #   if question + "!"
  #     @answers.to_s.upcase
  #     @@dummies.to_s.upcase
  #   elsif question + "!" && @@dummies.match(/^[A-Z]+$/)
  #     @answers
  #     @@dummies
  #   end
  # end


  def good_for? question
    question.downcase.include? @question
  end

  def get_answers
    @answers
  end


end
