User.destroy_all
Match.destroy_all
Question.destroy_all
Answer.destroy_all


oli = User.create(name:"Oli", gender:'Male')
ranjit = User.create(name:'Ranjit', gender:'Male')
pete = User.create(name:'Pete', gender:'Male')
manon= User.create(name:'manon', gender:'Female')
julia = User.create(name:'Julia', gender:'Female')
myrto = User.create(name:'Mytro', gender:'Female')
fernando = User.create(name:'fern', gender:'Male')
dunia = User.create(name:'dunia', gender:'Female')

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
