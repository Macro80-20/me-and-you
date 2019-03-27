class User  < ActiveRecord::Base
  has_many :answers
  has_many :questions, through: :answers




  # has_many :matched_users, foreign_key: :matcher_id, class_name: 'Match'
  #     has_many :matchees, through: :matched_users
  #
  # has_many :matchees_users, foreign_key: :matchee_id, class_name: 'Match'
  # has_many :matchers, through: :matchees_users
  # def create_answer_id
  #
  # end

  def match
    # self is the user we're comparing to
    my_answers = self.answers.map(&:answer)
    User.all.map do |user|
      #we iterate through users and collect an array of their answere
      your_answers = user.answers.map(&:answer)
      # this methods returns the number of elements that match
      count = (my_answers & your_answers).size
      #if the countis not and we do not match oursevles and 
      if count != 0 && self.id != user.id && self.gender != user.gender
        Match.create(matcher_id: self.id, matchee_id: user.id, ranking: count)
      end
    end
  end

  def matches_list
  need to convert this into a list 
  


  end
  # def top_matches
  #   top_matches = Match.all.select {|i| i.ranking > 0}
  #    top_users = top_matches.map do |top_match|
  #       User.all.select {|user| user.id == top_match.matchee_id}
  #     end
  #     # top_users.flatten.compact
  #   top_users.flatten.compact.each_with_index {|match,i| puts "#{match.name}"}.split("\n")
  # end

end
