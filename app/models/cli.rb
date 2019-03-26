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
