class AddRanking < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :ranking, :integer
  end
end
