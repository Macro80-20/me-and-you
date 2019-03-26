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
