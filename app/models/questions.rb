class Question < ActiveRecord::Base
  has_many :answers
  has_many :users, through: :answers


  
  # # def self.question_1
  # #   q1 = @@prompt.select("Okay honey, this is the most important question I am going to ask you. If you had an unlimited amount of cookies in front of you, how many would you have?", %w(none 7 123))
  # #   @user.q1 = q1
  # #   @user.save
  # if @user.q1 == "none"
  #   puts "You monster! Get out of my matchmaking app right now, you don't deserve love!"
  #   return
  # elsif @user.q1 == "7"
  #   puts "This is why you're looking so thin! My grandaughter was telling me about all those weird diets the kids are into these days... It's probably because they don't have their grandmas cooking for them...But don't worry, I'll go bake you some cookies after I'm done with this!"
  # else
  #   puts "Oh, I like you! You are a catch!"
  # end
  # # end
  # #
  # def self.question_2
  #   q2 = @@prompt.select("You are looking kind of thin, what is your favourite pasta dish, my dear?", %w(Ravioli Bolognese Carbonara))
  #   @user.q2 = q2
  #   @user.save
  #   puts "Good to know, I'll make it for you and your boo on your first date. Don't be late, only revenge is a dish best served cold!"
  # end

end
