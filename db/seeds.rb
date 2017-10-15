

starter_questions = [
  {title: "How do?", details: "How do I do a thing?"},
  {title: "Best Language?", details: "Whic programming language is the best?"},
  {title: "Another question?", details: "Just another question about nothing."}
]


starter_questions.each do |question|
  Question.create(question)
end
