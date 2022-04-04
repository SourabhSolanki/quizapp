# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

quiz = Quiz.create(name: "History")

qs = Question.create([
    {content: "When was the war of 1812?", quiz: quiz, answers: Answer.create([
        {content: "1812", correct_answer: true},
        {content: "wrong ", correct_answer: false},
        {content: "wrong again", correct_answer: false},
        {content: "wrong yet again", correct_answer: false},
        {content: "Some option", correct_answer: false},
    ])},
    {content: "Which US president declared war in 1812?", quiz: quiz, answers: Answer.create([
        {content: "Thomas Jefferson", correct_answer: false},
        {content: "James Madison", correct_answer: true},
        {content: "Andrew Jackson", correct_answer: false},
        {content: "John Adams", correct_answer: false},
        {content: "Some option", correct_answer: false},
    ])},
    {content: "Where was the peace treaty signed?", quiz: quiz, answers: Answer.create([
        {content: "The Hague", correct_answer: false},
        {content: "Antwerp", correct_answer: false},
        {content: "Ghent", correct_answer: true},
        {content: "Paris", correct_answer: false},
        {content: "Some option", correct_answer: false},
    ])},
    {content: "How many states made up the US in 1812?", quiz: quiz, answers: Answer.create([
        {content: "13", correct_answer: false},
        {content: "45", correct_answer: false},
        {content: "19", correct_answer: false},
        {content: "17", correct_answer: true},
        {content: "Some option", correct_answer: false},
    ])}
])
quiz.save
