class CLI
extend Styles::ClassMethods
  @@prompt = TTY::Prompt.new
  @@Hello = "
  _____ __ __    ___  ____  _       ____  __   _____      ____   ___   ______      __ __   ___   __ __
  / ___/|  |  |  /  _]|    || |     /    ||  | / ___/     /    | /   \ |      |    |  |  | /   \ |  |  |
  (   \_ |  |  | /  [_  |  | | |    |  o  ||_ |(   \_     |   __||     ||      |    |  |  ||     ||  |  |
    \__  ||  _  ||    _] |  | | |___ |     |  \| \__  |    |  |  ||  O  ||_|  |_|    |  ~  ||  O  ||  |  |
    /  \ ||  |  ||   [_  |  | |     ||  _  |     /  \ |    |  |_ ||     |  |  |      |___, ||     ||  :  |
      \    ||  |  ||     | |  | |     ||  |  |     \    |    |     ||     |  |  |      |     ||     ||     |
      \___||__|__||_____||____||_____||__|__|      \___|    |___,_| \___/   |__|      |____/  \___/  \__,_|

      "

      # def self.puts_super_super_fast(str)
      #   str
      #   chars = str.split(//)
      #   chars.each do |c|
      #     print c
      #     sleep 0.0000001
      #   end
      #   print "\n"
      # end

      def self.puts_super_fast(str)
        chars = str.split(//)
        chars.each do |c|
          print c
          sleep 0.001
        end
        print "\n"
      end

      def self.get_users_name
        str = "Hello my dear! My name is Sheila and I am going to help you find the love of your life. I am very good at matchmaking, just ask my friend Margaret, I got all four of her boys engaged within a year! Anyway, what is your name darling?"
        puts_medium(style.red(str))
        name = @@prompt.ask(">>>", convert: :string)
        @user = User.find_or_create_by(name: name.capitalize)
        system "clear"
      end

      def self.get_users_gender
        str = style.red("Oh, #{@user.name}! What a beautiful name! Do me a favour #{@user.name}, I forgot my glasses at home, are you a boy or a girl?")
        puts_medium(str)
        gender = @@prompt.select(">>>", %w(girl boy), convert: :string)
        @user.gender = gender
        if gender == "boy"
          @user.pronoun = "he"
        else
          @user.pronoun = "she"
        end
        @user.save
        system "clear"
      end

      def self.grandma
        Catpix::print_image "cute-grandma-illustration-260nw-628441763.jpg",
        :limit_x => 2,
        :limit_y => 2,
        :center_x => true,
        :center_y => true,
        :bg => "white",
        :bg_fill => true,
        :resolution => "high"
        sleep 1
      end

      def self.introduction

        # puts_super_fast(@@Hello)
        # sleep 2
        # grandma
        get_users_name
        get_users_gender
        system "clear"
      end

      def self.questions
        Question.all.each do |q|
          answer = @@prompt.select(style.red(q.question), q.answer_1, q.answer_2,q.answer_3, convert: :string)
          puts_fast(style.green(q.sassy_grandma_quote))
          sleep 0.3
          @answer = Answer.create(answer: answer)
          @answer.question_id = q.id
          @answer.user_id = @user.id
          @answer.save
          system "clear"
        end
      end




      def self.selection #split this method (was in self.show_matches) to make the code cleaner and also use it for go_back
        str = style.red("I have worked my magic! Someone here is your potential soul mate... Pick the one that gives you butterflies!")
          str2 = style.red("I knew you'd like this one! What a great choice! Want to see their profile?")
          puts_medium(str)
        @selection = @@prompt.select(">>>" , ["#{@user.top_matches[0]}",  "#{@user.top_matches[1]}",  "#{@user.top_matches[2]}"], convert: :string)
          puts_medium(style.red("I knew you'd like this one! What a great choice! Want to see their profile?"))
          pls = @@prompt.select(">>>", %w(yes no), convert: :string)
          if pls == "yes"
            system "clear"
            User.all.find{|i| i.name == @selection}.user_profile
            self.go_back
          else
            self.bye
          end
        end

      def self.show_matches
        puts_medium(style.red("Okay dear, time for me to match you up! Let me look at my book..."))
        @user.match
        if @user.match == nil
              puts_medium(style.red("Wow, you are really not very matchable are you..? Maybe go improve yourself and come back in a few years!"))
          else
            system "clear"
            self.selection
          end
        end

        def self.go_back #gives a choice between going back to the matches or confirming the match
          str = style.red("Okay honey bunny, press back to see your other matches or confirm to be matched with this lovely darling!")
          puts_medium(str)
        answer =  @@prompt.select(">>>", %w(back  confirm), convert: :string)
          if answer == "back" #gives the selection of matches again as seen in self.show_matches selection variable
            # @@prompt.select("Let's try this again, shall we? Don't be too picky!!",  ["#{@user.top_matches[0]}",  "#{@user.top_matches[1]}",  "#{@user.top_matches[2]}"], convert: :string)
            system "clear"
            self.selection
          else
            system "clear"
            puts_medium(style.red("Your match has been confirmed darling! Go have fun! Oh young love... Makes me tear up every time..."))
          end
        end

        def self.confirm_match #method that destroys all of someone's matches apart from one
         @user.match.destroy_match
        end


      #   def self.done?
      #     @@prompt.keypress("Press enter to confirm the match", keys: :enter)
      #   end

      def self.bye
        # grandma
        puts_medium(style.red("Okay munchkin, this is it!! Say hello to your lovely friends for me, and tell them to answer my calls! They don't call me cupid for nothing."))
      end



      end
