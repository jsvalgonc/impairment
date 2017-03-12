class Month < ActiveRecord::Base
    #enum role: [:open, :closed]
    enum status: [ :open , :closed  ]
    enum import_parties_status: [ :imported , :missing  ]
    #enum import_loans_status: [ :open , :closed  ], _prefix: true
    #enum import_mitigansts_status: [ :open , :closed  ], _prefix: true
    
    def self.getMax
        res=Month.maximum('month')
        if res.nil? then
            return Time.new(1900,1,1)
        else
            return res
        end
    end
end
