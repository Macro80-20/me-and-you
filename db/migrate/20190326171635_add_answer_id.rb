class AddAnswerId < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :answer_id, :integer
  end
end
