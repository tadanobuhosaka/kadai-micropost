class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :like, foreign_key: { to_table: :microposts }

      t.timestamps
      
    end
  end
end
