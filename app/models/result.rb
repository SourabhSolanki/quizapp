class Result < ApplicationRecord

  belongs_to :quiz
  belongs_to :user

  has_many :answered_questions, dependent: :destroy
  has_many :questions, through: :answered_questions
  has_many :answers, through: :answered_questions

  accepts_nested_attributes_for :answered_questions

  validate :check_test


  def grade
    correct = answers.where(correct_answer: true).count
    percentage = (correct.to_f / answers.count.to_f) * 100
    return "#{percentage.to_i}%"
  end

  def check_test
    if self.user.results.where(quiz: self.quiz).any?
      self.errors.add(:name, "you have already completed this quiz")
    end
  end
end
