class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :length
      t.string :genre
      t.references :artist, index: true, foreign_key: true
      #Typed in artist:references when generating the model. THe above line of code is the result.
      t.timestamps null: false
    end
  end
end
