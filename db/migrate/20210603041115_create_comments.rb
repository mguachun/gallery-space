class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :headline
      t.string :description

      t.timestamps
    end
  end
end
