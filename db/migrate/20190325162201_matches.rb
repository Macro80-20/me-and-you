class Matches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :matcher_id
      t.integer :matchee_id 
    end
  end
end
