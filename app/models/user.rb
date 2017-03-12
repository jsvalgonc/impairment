class User < ActiveRecord::Base
  enum role: [:process_manager, :only_view]
  after_initialize :set_default_role, :if => :new_record?
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def set_default_role
    self.role ||= :only_view
  end
  
  def process_manager?
    self.role == "process_manager" ? true : false
  end



end
