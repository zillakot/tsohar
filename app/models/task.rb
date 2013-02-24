class Task < ActiveRecord::Base
  belongs_to :project
  
  has_many :task_locks, :dependent => :delete_all
  
  attr_accessible :name, :description, :priority, :status, :deadline, :comment
end
