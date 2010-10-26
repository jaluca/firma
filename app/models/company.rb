class Company < ActiveRecord::Base
  has_many :workers, :dependent => :destroy
  belongs_to :line
end
