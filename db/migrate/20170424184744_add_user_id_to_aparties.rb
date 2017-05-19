class AddUserIdToAparties < ActiveRecord::Migration
  def change
    add_reference :aparties, :user, index: true, foreign_key: true
  end
end
