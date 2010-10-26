class Company < ActiveRecord::Base
  has_many :workers, :dependent => :destroy
  belongs_to :line
  
  validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 30 }
  validates :boss, :presence => true
  validates :line_id, :presence => true
end
