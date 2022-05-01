class RemoveCommFromPostComment < ActiveRecord::Migration[6.1]
  def change
    remove_column :post_comments, :comm, :text
  end
end
