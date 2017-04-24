class AddMonthIdToAparties < ActiveRecord::Migration
  def change
    add_reference :aparties, :month, index: true, foreign_key: true
  end
end
