class ChangeDataTypeForYear < ActiveRecord::Migration[6.1]
  def change
    change_column(:works, :year, :text)
  end
end
