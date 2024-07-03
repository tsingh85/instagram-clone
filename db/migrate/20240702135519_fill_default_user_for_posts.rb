class FillDefaultUserForPosts < ActiveRecord::Migration[6.1]
  def up
    Post.where(user_id: nil).update_all(user_id: User.first.id)
  end

  def down
    Post.where(user_id: User.first.id).update_all(user_id: nil)
  end
end
