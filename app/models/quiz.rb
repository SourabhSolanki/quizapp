class Quiz < ApplicationRecord
  has_many :questions, dependent: :delete_all
  has_many :results, dependent: :delete_all


  def build_result
    r = self.results.build()
    self.questions.each {|q| r.answered_questions.build(question: q)}
    return r
  end
end
