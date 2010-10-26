class Company < ActiveRecord::Base
  has_many :workers, :dependent => :destroy
end
