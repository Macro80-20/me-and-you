class CLI

      @@prompt = TTY::Prompt.new


    def self.get_users_name
      name = @@prompt.ask("Welcome to our dating app, What is your name?",convert: :string)
      # binding.pry
      @user = User.find_or_create_by(name: name)
    end

    def self.get_users_gender
        gender = @@prompt.ask("What is your gender? male or female .. only", convert: :string)
        @user.gender = gender
        @user.save
    end

    def self.introduction
        get_users_name
        get_users_gender
    end

    def self.question_1
      q1 = @@prompt.select("Okay honey, this is the most important question I am going to ask you. If you had an unlimited amount of cookies in front of you, how many would you have?", %w(none 7 123))
      @user.q1 = q1
      @user.save
    end

    def self.question_2
      q2 = @@prompt.select("You are looking kind of thin, what is your favourite pasta dish, my dear?", %w(Ravioli Bolognese Carbonara))
      @user.q2 = q2
      @user.save
      puts "Good to know, I'll make it for you and your boo on your first date. Don't be late, only revenge is a dish best served cold!"
    end

    def self.all_questions
      question_1
        if @user.q1 == "none"
          puts "You monster! Get out of my matchmaking app right now, you don't deserve love!"
          return
        elsif @user.q1 == "7"
          puts "This is why you're looking so thin! My grandaughter was telling me about all those weird diets the kids are into these days... It's probably because they don't have their grandmas cooking for them...But don't worry, I'll go bake you some cookies after I'm done with this!"
        else
          puts "Oh, I like you! You are a catch!"
        end
      question_2
    end
    # def show_their_artists
    #   puts "You currently like:"
    #   @user.artists.each do |artist|
    #     puts artist.name
    #   end
    # end

    # def like_another_artist?
    #   @prompt.yes?("Would you like to like another artist?")
    # end

    # def pick_an_artist
    #   @prompt.select("Ok. Choose one below:", Artist.all_names)
    # end

    # def start
    #   get_users_name
    #   welcome
    #   show_their_artists
    #   if like_another_artist?
    #     pick_an_artist
    #   else
    #     puts "Ok, bye!"
    #   end
    # end

  end
