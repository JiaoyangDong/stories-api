class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.string :author
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
