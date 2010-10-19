class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
          t.string :name_of_company
          t.string   :boss 
    end
  end

  def self.down
    drop_table :companies
  end
  
end