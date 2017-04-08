class AddMonthIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :month, index: true, foreign_key: true
  end
end
