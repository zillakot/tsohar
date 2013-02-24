class Member < ActiveRecord::Base
  belongs_to :member_role
  belongs_to :project
  belongs_to :user
  
  attr_accessible :user_id, :member_role_id
  validates_uniqueness_of :project_id, :scope => [:user_id], :message => "You cannot add the same user twice!"
end
