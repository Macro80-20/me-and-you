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
    top_users.flatten.compact.map(&:name)
  end

  def answers
    Answer.all.select{|i| i.user_id ==self.id }.map(&:answer)
  end

  def user_profile
    puts "Welcome #{self.name}'s Profile!"
    puts "#{self.name} would ALWAYS have #{self.answers[0]} cookies when the opportunity presents itself."
    puts "You would not believe it, but #{self.pronoun} thinks that the best pasta dish out there is #{self.answers[1]}."
    puts "When #{self.name} is not having a great time at FlatIron, #{self.pronoun} is watching #{self.answers[2]}"
    puts "Does #{self.name} like the outdoors you ask? #{self.answers[3]}!"
    puts "If #{self.pronoun} was to knit something for you, it would definitely be a #{self.answers[4]}."
    puts "I know that you love the sound of #{self.name}, because I picked her. Now GO HAVE FUN CHILDREN AU REVOIR!"
  end
end
