class AddSassyQuote < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :sassy_grandma_quote, :string
  end
end
