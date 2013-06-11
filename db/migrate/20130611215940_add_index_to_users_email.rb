class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
  	add_index :users, :email, unique: true
  	before_save { |user| user.email = email.downcase }
  end
end
