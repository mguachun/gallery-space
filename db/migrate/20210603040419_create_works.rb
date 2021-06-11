class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.string :title
      t.string :artist
      t.integer :year
      t.string :medium
      t.integer :comment_id


      t.timestamps
    end
  end
end
