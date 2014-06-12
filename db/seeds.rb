# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create(user_id: 1,title: "Will I be able to see this question, if it's not too brief?",question: "Picard perspective tip: Neither the sun, the moon, the stars, nor any asteroids revolve around you. You are a dust mote with ideas. I am captain Jean Luc Picard of the USS Enterprise.")
Question.create(user_id: 1,title: "What about this question, will it be visible, if it's not too brief?",question: "Provide me with ships for the celestial atmosphere and there will be men there, too, who do not fear the appalling distance JOHANNES KEPLER. Kepler: significantly more likable than Brahe, but without the gold nose.")

Answer.create(user_id: 1, question_id: 1,answer: "God willing, both question and answer are visible, cap'n.")
