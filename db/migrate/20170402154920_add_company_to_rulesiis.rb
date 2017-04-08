class AddCompanyToRulesiis < ActiveRecord::Migration
  def change
    add_reference :rulesiis, :company, index: true, foreign_key: true
  end
end
