class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :topic
      t.belongs_to :user
      t.text :text
      t.timestamps null: false
    end
  end
end
