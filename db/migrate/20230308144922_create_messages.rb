class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.references :adventure, null: false, foreign_key: true
      t.string :role
      t.text :content
      t.integer :prompt_tokens
      t.integer :completion_tokens
      t.integer :total_tokens
      t.references :user, null: false, foreign_key: true
      t.string :log

      t.timestamps
    end
  end
end
