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
      your_answers = user.answers.map(&:answer)
      count = (my_answers & your_answers).size
      if count != 0 && self.id != user.id && self.gender != user.gender
        Match.create(matcher_id: self.id, matchee_id: user.id, ranking: count)
      end
    end
  end

  def top_matches
    top_matches = Match.all.select {|i| i.ranking > 0}
     top_users = top_matches.map do |top_match|
        User.all.select {|user| user.id == top_match.matchee_id}
      end
      # top_users.flatten.compact
    top_users.flatten.compact.each_with_index {|match,i| puts "#{i+1}. #{match.name}"}
  end

  # def new_match
  #   matches = []
  #   User.all.map do |i| #try using find_each
  #     if i.q1 == self.q1 && i.q2 == self.q2
  #       matches << i
  #     end
  #   end
  #   matches.delete_if{|i| i==self}
  #   matches.each do |i|
  #     Match.create(matcher_id: i.id, matchee_id: self.id)
  #   end
  # end

end
