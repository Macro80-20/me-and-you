User.destroy_all
Match.destroy_all
Question.destroy_all
Answer.destroy_all


oli = User.create(name:"Oli", gender:'boy')
ranjit = User.create(name:'Ranjit', gender:'boy')
pete = User.create(name:'Pete', gender:'boy')
manon= User.create(name:'manon', gender:'girl')
julia = User.create(name:'Julia', gender:'girl')
myrto = User.create(name:'Mytro', gender:'girl')
fernando = User.create(name:'fern', gender:'boy')
dunia = User.create(name:'dunia', gender:'girl')

Question.create(question: "Okay honey, this is the most important question I am going to ask you. If you had an unlimited amount of cookies in front of you, how many would you have?",
                answer_1: "none",
                answer_2: "7",
                answer_3: "123",
                sassy_grandma_quote: "Good to know, I'll make it for you and your boo on your first date. Don't be late, only revenge is a dish best served cold!"
              )
Question.create(question: "You are looking kind of thin, what is your favourite pasta dish, my dear?",
                answer_1: 'Ravioli',
                answer_2: 'Bolognese',
                answer_3: 'Red sauce',
                sassy_grandma_quote: "Oh, I like you! You are a catch!"
                )

Question.create(question: "Also, dear, have you seen the Great British Bake Off? Oh I love it so much, Mitch -my husband, we've been together for 51 years- watch it every Sunday! How lovely it is... Anyway, what's your favourite show?",
               answer_1: 'Friends',
               answer_2: 'Sherlock',
               answer_3: "I don't like watching TV",
               sassy_grandma_quote: "What a great taste you have! Lovely, lovely kid!"
                )

Question.create(question: "Did I tell you about my plants? Oh I have so many of them in my garden! They're all blooming now, it's so wonderful! Do you like the outdoors?",
              answer_1: 'Yes!',
              answer_2: 'No',
              answer_3: "Depends if there are snakes around",
              sassy_grandma_quote: "Oh you, what a sweetheart you are!"
                )

Question.create(question: "I also knit, did you know that? What would you like me to make for you, darling?",
             answer_1: "3 socks (there's not enough material for 4)",
             answer_2: '2 person Christmas jumper',
             answer_3: "A hat for my dog",
             sassy_grandma_quote: "Alright, I will get knitting!"
                )



  Answer.create(question_id: 1, user_id: oli.id, answer: "none")
  Answer.create(question_id: 1, user_id: ranjit.id, answer: "7")
  Answer.create(question_id: 1, user_id: pete.id, answer: "123")
  Answer.create(question_id: 1, user_id: manon.id, answer: "none")
  Answer.create(question_id: 1, user_id: julia.id, answer: "7")
  Answer.create(question_id: 1, user_id: fernando.id, answer: "7")

  Answer.create(question_id: 2, user_id: oli.id, answer:'Ravioli' )
  Answer.create(question_id: 2, user_id: ranjit.id, answer: 'Ravioli' )
  Answer.create(question_id: 2, user_id: pete.id, answer: 'Bolognese')
  Answer.create(question_id: 2, user_id: manon.id, answer: 'Red sauce' )
  Answer.create(question_id: 2, user_id: julia.id, answer: 'Bolognese')
  Answer.create(question_id: 2, user_id: fernando.id, answer: 'Ravioli')

  Answer.create(question_id: 3, user_id: oli.id, answer:'Friends' )
  Answer.create(question_id: 3, user_id: ranjit.id, answer: 'Friends' )
  Answer.create(question_id: 3, user_id: pete.id, answer: 'Friends')
  Answer.create(question_id: 3, user_id: manon.id, answer: 'Friends')
  Answer.create(question_id: 3, user_id: julia.id, answer: 'Sherlock' )
  Answer.create(question_id: 3, user_id: fernando.id, answer: "I don't like watching TV" )

  Answer.create(question_id: 4, user_id: oli.id, answer:'Yes!' )
  Answer.create(question_id: 4, user_id: ranjit.id, answer: 'No' )
  Answer.create(question_id: 4, user_id: pete.id, answer: 'No')
  Answer.create(question_id: 4, user_id: manon.id, answer: "Depends if there are snakes around")
  Answer.create(question_id: 4, user_id: julia.id, answer: "Depends if there are snakes around")
  Answer.create(question_id: 4, user_id: fernando.id, answer: "Depends if there are snakes around" )

  Answer.create(question_id: 5, user_id: oli.id, answer:"A hat for my dog")
  Answer.create(question_id: 5, user_id: ranjit.id, answer: "A hat for my dog")
  Answer.create(question_id: 5, user_id: pete.id, answer: "3 socks (there's not enough material for 4)")
  Answer.create(question_id: 5, user_id: manon.id, answer: "2 person Christmas jumper")
  Answer.create(question_id: 5, user_id: julia.id, answer: "2 person Christmas jumper")
  Answer.create(question_id: 5, user_id: fernando.id, answer: "3 socks (there's not enough material for 4)")
