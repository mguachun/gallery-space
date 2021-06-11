class RemoveColumnCommentIdFromWorks < ActiveRecord::Migration[6.1]
  def change
    remove_column(:works, :comment_id, :integer)

  end
end
