# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

<<<<<<< HEAD
15.times do
=======
12.times do
>>>>>>> 27998d58bfdd2de9e1844e4912feed40bc577f02
    Question.create(
        title: Faker::Lorem.sentence(word_count: 3),
        body: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
        user_id:rand(1..4)
    )
end

48.times do
    Answer.create(
        body: Faker::Lorem.paragraph(sentence_count: 3, supplemental: false, random_sentences_to_add: 4),
        downvote: rand(1..10),
        upvote: rand(1..10),
<<<<<<< HEAD
        question_id: rand(1..15)
=======
        question_id: rand(1..24)
>>>>>>> 27998d58bfdd2de9e1844e4912feed40bc577f02
    )
end

5.times do
    Comment.create(
                body: Faker::Lorem.paragraph(sentence_count: 4, supplemental: false, random_sentences_to_add: 4),
                user_id: rand(1..4),
                answer_id: [1..48].sample
    )
end

