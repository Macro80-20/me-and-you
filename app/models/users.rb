class User  < ActiveRecord::Base
  has_many :answers
  has_many :questions, through: :answers
  
  def match
    # self is the user we're comparing to
  
    my_answers = self.answers
    # .map(&:answer)
    User.all.map do |user|
      your_answers = user.answers
      # .map(&:answer)
      count = (my_answers & your_answers).size
      #if the countis not and we do not match oursevles and
      if count != 0 && self.id != user.id && self.gender != user.gender
        Match.create(matcher_id: self.
          id, matchee_id: user.id, ranking: count)
      end
    end
  end

  def top_matches
    top_matches = Match.all.select {|i| i.ranking > 0 && i.matcher_id == self.id || i.matchee_id == self.id}
    top_users = top_matches.map do |top_match|
      User.all.select{|user| user.id == top_match.matchee_id}
    end
    top_users.flatten.compact.map(&:name).uniq


  end

  def answers
    Answer.all.select{|i| i.user_id ==self.id }.map(&:answer)
  end

  def user_profile
    puts "Welcome #{self.name}'s Profile!"
    puts "#{self.name} would ALWAYS have #{self.answers[0].downcase} cookies when the opportunity presents itself."
    puts "You would not believe it, but #{self.pronoun} thinks that the best pasta dish out there is #{self.answers[1].downcase}."
      if self.answers[2].downcase != "i don't like watching tv"
        puts "When #{self.name} is not having a great time at FlatIron, #{self.pronoun} is watching #{self.answers[2].downcase}"
      end
    puts "Does #{self.name} like the outdoors you ask? #{self.answers[3]}!"
    puts "If #{self.pronoun} was to knit something for you, it would definitely be #{self.answers[4].downcase}."
    puts "What does #{self.name} do when there's a scary and loud storm outside? #{self.answers[5]}, of course!"
      if self.answers[6] != "None. I am not thinking about this yet!!"
        puts "Think about your future! Why not have #{self.answers[6].downcase} children with #{self.name}?"
      end
    puts "You really need to be #{self.answers[7].downcase} for them to like you though.."
    # puts "But most importantly, #{self.name}'s main priority at the moment is #{self.answers[8].downcase}. What a sweetheart!'"
    puts "I know that you love the sound of #{self.name}, because I picked them. Now GO HAVE FUN CHILDREN AU REVOIR!"
  end
end
