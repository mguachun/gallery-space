class RemoveIdFromWorks < ActiveRecord::Migration[6.1]
  def change
    remove_column :works, :user_id
    remove_column :works, :comment_id
  end
end
