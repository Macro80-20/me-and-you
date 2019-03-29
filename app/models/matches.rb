class Match < ActiveRecord::Base
    belongs_to :matcher, class_name: 'User'
    belongs_to :matchee, class_name: 'User'

    # def destroy_match
    #   if matchee_id !=  User.all.find{|i| i.name == @selection}.id
    #      Match.all.select{|i| i.matcher_id == @user.id}.destroy
    #    end
    #  end

end
