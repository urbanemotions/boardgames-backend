class CreateBoardgames < ActiveRecord::Migration[6.1]
  def change
    create_table :boardgames do |t|
      t.string :name
      t.string :image_url
      t.string :theme
      t.integer :duration
      t.string :num_of_players
      t.string :age_requirements
      t.string :description
      t.string :review

      t.timestamps
    end
  end
end
