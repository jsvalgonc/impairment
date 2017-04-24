class AddMonthIdToAmitigants < ActiveRecord::Migration
  def change
    add_column :amitigants, :month_id, :integer
  end
end
