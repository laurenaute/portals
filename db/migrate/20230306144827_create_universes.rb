class CreateUniverses < ActiveRecord::Migration[7.0]
  def change
    create_table :universes do |t|
      t.string :theme
      t.text :description
      t.text :parameters
      t.text :initializer
      t.string :image_card_url
      t.string :image_background_url
      t.string :image_background_loading_url
      t.string :image_background_play_url
      t.string :image_loader_url

      t.timestamps
    end
  end
end
