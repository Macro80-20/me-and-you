User.destroy_all
Match.destroy_all
Question.destroy_all
Answer.destroy_all


oli = User.create(name:"Oli", gender:'boy', pronoun: "he")
ranjit = User.create(name:'Ranjit', gender:'boy', pronoun: "he")
pete = User.create(name:'Pete', gender:'boy', pronoun: "he")
manon= User.create(name:'Manon', gender:'girl', pronoun: "she")
julia = User.create(name:'Julia', gender:'girl', pronoun: "she")
myrto = User.create(name:'Mytro', gender:'girl', pronoun: "she")
fernando = User.create(name:'Fern', gender:'boy', pronoun: "he")
dunia = User.create(name:'Dunia', gender:'girl', pronoun: "she")

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

Question.create(question: "Now imagine this: It's a cold night and the heating indoors is broken. What do you do?",
             answer_1: "Cuddle",
             answer_2: "Make a cuppa",
             answer_3: "Light a fire",
             sassy_grandma_quote: "Perfect answer! So would I!"
)

Question.create(question: "How many little ones do you want, darling?",
                answer_1: "Two",
                answer_2: "more than two",
                answer_3: "None. I am not thinking about this yet!!",
                sassy_grandma_quote: "My motto is: THE MORE THE MERRIER"
                )

Question.create(question: "What is it that you want in your BAE (isn't that what the kids call them?)",
                answer_1: "Attractive",
                answer_2: "Similar hobbies ",
                answer_3: "Stability in their life",
                sassy_grandma_quote: "I can work with this! My friend's friend who has a best-friend might just connect with you!"
  )

  Question.create(question: "Okay little one, which of these are you focusing on right now?",
                answer_1: "Getting your money up",
                answer_2: "Happiness",
                answer_3: "Health",
                sassy_grandma_quote: "BINGO, VERY GOOD!"
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

  Answer.create(question_id: 6, user_id: oli.id, answer: "Cuddle")
  Answer.create(question_id: 6, user_id: ranjit.id, answer: "Make a cuppa")
  Answer.create(question_id: 6, user_id: pete.id, answer: "Light a fire")
  Answer.create(question_id: 6, user_id: manon.id, answer: "Light a fire")
  Answer.create(question_id: 6, user_id: julia.id, answer: "Make a cuppa")
  Answer.create(question_id: 6, user_id: fernando.id, answer: "Light a fire")


  Answer.create(question_id: 7, user_id: oli.id, answer:"2")
  Answer.create(question_id: 7, user_id: ranjit.id, answer: "2")
  Answer.create(question_id: 7, user_id: pete.id, answer: "more than 2")
  Answer.create(question_id: 7, user_id: manon.id, answer: "more than 2")
  Answer.create(question_id: 7, user_id: julia.id, answer: "none (I am not thinking about this yet)")
  Answer.create(question_id: 7, user_id: fernando.id, answer: "none (I am not thinking about this yet)")


  Answer.create(question_id: 8, user_id: oli.id, answer: "similar hobbies")
  Answer.create(question_id: 8, user_id: ranjit.id, answer: "similar hobbies")
  Answer.create(question_id: 8, user_id: pete.id, answer: "stability in their life" )
  Answer.create(question_id: 8, user_id: manon.id, answer: "stability in their life" )
  Answer.create(question_id: 8, user_id: julia.id, answer: "attractive")
  Answer.create(question_id: 8, user_id: fernando.id, answer: "attractive")

  Answer.create(question_id: 9, user_id: oli.id, answer:"Health")
  Answer.create(question_id: 9, user_id: ranjit.id, answer: "getting your money up")
  Answer.create(question_id: 9, user_id: pete.id, answer: "Health")
  Answer.create(question_id: 9, user_id: manon.id, answer: "Happiness")
  Answer.create(question_id: 9, user_id: julia.id, answer: "Happiness")
  Answer.create(question_id: 9, user_id: fernando.id, answer: "getting your money up")

  # Answer.create(question_id: 10, user_id: oli.id, answer:"A hat for my dog")
  # Answer.create(question_id: 10, user_id: ranjit.id, answer: "A hat for my dog")
  # Answer.create(question_id: 10, user_id: pete.id, answer: "3 socks (there's not enough material for 4)")
  # Answer.create(question_id: 10, user_id: manon.id, answer: "2 person Christmas jumper")
  # Answer.create(question_id: 10, user_id: julia.id, answer: "2 person Christmas jumper")
  # Answer.create(question_id: 10, user_id: fernando.id, answer: "3 socks (there's not enough material for 4)")
  #
  # Answer.create(question_id: 11, user_id: oli.id, answer:"A hat for my dog")
  # Answer.create(question_id: 11, user_id: ranjit.id, answer: "A hat for my dog")
  # Answer.create(question_id: 11, user_id: pete.id, answer: "3 socks (there's not enough material for 4)")
  # Answer.create(question_id: 11, user_id: manon.id, answer: "2 person Christmas jumper")
  # Answer.create(question_id: 11, user_id: julia.id, answer: "2 person Christmas jumper")
  # Answer.create(question_id: 11, user_id: fernando.id, answer: "3 socks (there's not enough material for 4)")
