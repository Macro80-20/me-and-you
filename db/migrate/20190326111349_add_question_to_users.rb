class AddQuestionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :q2, :string
    add_column :users, :q1, :string
  end
end
