# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

# users = User.create([
# {username: 'Spongebob'},
# {username: 'NotUser'},
# {username: 'UserThree'},
# {username: 'DW3bZ'},
# {username: 'Marlene'}
# ])
users = User.all.pluck(:id)

polls = Poll.create([
{user_id: users[0], title: "Confessions from Bikini Bottom"},
{user_id: users[1], title: "This is not_a_title"},
{user_id: users[2], title: "SQL fun :)"},
{user_id: users[3], title: "Progress Report"},
{user_id: users[4], title: "How do I get this thing to work?"}
])

questions = Question.create([
{poll_id: polls[0].id, body: "Are Krabby patties the best?"},
{poll_id: polls[0].id, body: "Who lives in a pineapple under the sea?"},

{poll_id: polls[1].id, body: "Is this not_a_poll?"},

{poll_id: polls[2].id, body: "What does #{'DROP TABLES;'} do in Ruby?"},
{poll_id: polls[2].id, body: "What's your favorite SQL injection?"},
{poll_id: polls[2].id, body: "Why was I banned from a/A Answers?"},
{poll_id: polls[2].id, body: "[USER WAS BANNED FOR THIS POLL]"},

{poll_id: polls[3].id, body: "How was my lecture?"},
{poll_id: polls[3].id, body: "How was your day today?"},

{poll_id: polls[4].id, body: "My grandkids keep talking about 'Googling themselves', should I be concerned?"},
{poll_id: polls[4].id, body: "Knitting or shuffleboard?"}
])

answers = AnswerChoice.create([
{question_id: questions[0].id, body: 'yes'},
{question_id: questions[0].id, body: 'no'},

{question_id: questions[1].id, body: 'Spongebob'},
{question_id: questions[1].id, body: 'Patrick'},
{question_id: questions[1].id, body: 'Squidward'},
{question_id: questions[1].id, body: 'Mr. Krabs'},

{question_id: questions[2].id, body: 'No_it_is_Not_a_not_poll'},

{question_id: questions[3].id, body: 'DROPPPPPPED'},
{question_id: questions[3].id, body: "#{'/$user rm -rf /'}"},
{question_id: questions[3].id, body: '_'},

{question_id: questions[4].id, body: "#{'DROP TABLES;'}"},
{question_id: questions[4].id, body: "#{'SELECT users.passwords;'}"},
{question_id: questions[4].id, body: "#{'JOIN users.id ON administrators.id'}"},

{question_id: questions[5].id, body: "trollface.jpg"},

{question_id: questions[6].id, body: "[CONTENT REMOVED]"},
{question_id: questions[6].id, body: "[CONTENT REMOVED]"},
{question_id: questions[6].id, body: "[CONTENT REMOVED]"},

{question_id: questions[7].id, body: "Great :)"},
{question_id: questions[7].id, body: "OKAY -_-"},
{question_id: questions[7].id, body: "AWFUL :'("},

{question_id: questions[8].id, body: "Great :)"},
{question_id: questions[8].id, body: "OKAY -_-"},
{question_id: questions[8].id, body: "AWFUL :'("},

{question_id: questions[9].id, body: "YES or NO"},

{question_id: questions[10].id, body: "Knitting?"},
{question_id: questions[10].id, body: "shuffleboard!"}
])

responses = Response.create([
  {user_id: users[3], answer_id: answers[12].id},
  {user_id: users[4], answer_id: answers[2].id},
  {user_id: users[0], answer_id: answers[7].id},
  {user_id: users[1], answer_id: answers[11].id},
  {user_id: users[2], answer_id: answers[13].id},
  {user_id: users[3], answer_id: answers[4].id},
  {user_id: users[4], answer_id: answers[8].id},
  {user_id: users[0], answer_id: answers.last.id}
  ])

end
