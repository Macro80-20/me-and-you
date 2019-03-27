class CLI

      @@prompt = TTY::Prompt.new


    def self.get_users_name
      name = @@prompt.ask("Hello my dear! My name is Sheila and I am going to help you find the love of your life. I am very good at matchmaking, just ask my friend Margaret, I got all four of her boys engaged within a year! Anyway, what is your name darling?",convert: :string)
      # binding.pry
      @user = User.find_or_create_by!(name: name)
    end

    def self.get_users_gender
        gender = @@prompt.select("Oh, #{@user.name}! What a beautiful name! Do me a favour #{@user.name}, I forgot my glasses at home, are you a boy or a girl?", %w(girl boy), convert: :string)
        @user.gender = gender
        @user.save
    end

    def self.grandma
    Catpix::print_image "cute-grandma-illustration-260nw-628441763.jpg",
      :limit_x => 0.5,
      :limit_y => 1,
      :center_x => true,
      :center_y => true,
      :bg => "white",
      :bg_fill => false,
      :resolution => "high"
    end

    def self.introduction
        grandma
        get_users_name
        get_users_gender
    end

    def self.questions
      Question.all.each do |q|
        answer = @@prompt.select(q.question, [q.answer_1, q.answer_2, q.answer_3], convert: :string)
        puts q.sassy_grandma_quote
        @answer = Answer.find_or_create_by(answer: answer)
        @answer.question_id = q.id
        @answer.user_id = @user.id
        @answer.save
      end
    end

   def self.list_of_matchees
  #  table = TTY:Table.new 
  # @User.match.each do |x?
  choices = ["beer wine","bourbon"]
@@prompt.multi_select("I have worked my magic! Someone here is your potential
  soul mate, Pick one and live happily ever after", 
  choices)
  end 


    def self.bye
      grandma
      puts "Bye-Bye munchkin!! Say hello to your lovely friends for me, and tell them to answer my calls! They don't call me cupid for nothing."
    end



  end
