class CreatePostComments < ActiveRecord::Migration[6.1]
  def change
    create_table :post_comments do |t|
      t.integer :book_id
      t.integer :user_id
      t.text :comm

      t.timestamps
    end
  end
end
