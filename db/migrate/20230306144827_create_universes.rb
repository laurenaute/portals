class CreateUniverses < ActiveRecord::Migration[7.0]
  def change
    create_table :universes do |t|
      t.string :theme
      t.text :description
      t.text :parameters
      t.string :image_url

      t.timestamps
    end
  end
end
