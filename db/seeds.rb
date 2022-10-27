# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

12.times do
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
        question_id: rand(1..24)
    )
end

10.times do
    Comment.create(
                body: Faker::Lorem.paragraph(sentence_count: 4, supplemental: false, random_sentences_to_add: 4),
                user_id: rand(1..4),
                answer_id: [36,37,47,48].sample
    )
end



