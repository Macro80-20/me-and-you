class User  < ActiveRecord::Base
    has_many :matched_users, foreign_key: :matcher_id, class_name: 'Match'
        has_many :matchees, through: :matched_users   

    has_many :matchees_users, foreign_key: :matchee_id, class_name: 'Match'
    has_many :matchers, through: :matchees_users

end
    
