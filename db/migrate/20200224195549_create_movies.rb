class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text   :description
      t.string :movie_length
      t.string :director
      t.string :rating
      t.integer :user_id
    
   

      t.timestamps
    end
  end
end

