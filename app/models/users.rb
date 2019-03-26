class User  < ActiveRecord::Base
  has_many :answers
  has_many :questions, through: :answers



  
    # has_many :matched_users, foreign_key: :matcher_id, class_name: 'Match'
    #     has_many :matchees, through: :matched_users
    #
    # has_many :matchees_users, foreign_key: :matchee_id, class_name: 'Match'
    # has_many :matchers, through: :matchees_users


    # def compare
    #   hash = {}
    #   User.all.each do |user|
    #     i = Question.all.count {|q| q == self.find(q.id) }
    #     Match.create(ranking: i, user_id: user.id, matchee_id: self.id)
    #   end
    # end
    #
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
