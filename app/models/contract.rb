class Contract < ActiveRecord::Base
    
    
  def self.import(file)
    CSV.foreach(file.path, headers: true, :col_sep => ("|")) do |row|
      Contract.create! row.to_hash
    end
  end

end
