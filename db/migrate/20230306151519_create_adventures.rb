class CreateAdventures < ActiveRecord::Migration[7.0]
  def change
    create_table :adventures do |t|
      t.references :character, null: false, foreign_key: true
      t.string :character_name
      t.string :difficulty
      t.boolean :choices
      t.text :save_adventure
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
