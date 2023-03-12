class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :description
      t.text :parameters
      t.string :image_card_url
      t.string :image_background_card_url
      t.string :image_background_page_url
      t.references :universe, null: false, foreign_key: true
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma

      t.timestamps
    end
  end
end
