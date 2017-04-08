class Mitigant < ActiveRecord::Base
require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true, :col_sep => ("|")) do |row|
      Mitigant.create! row.to_hash
    end
  end

end
