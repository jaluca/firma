class AddLineToCompanies < ActiveRecord::Migration
  def self.up
     add_column :companies, :line_id, :integer
    end

    def self.down
      remove_column :companies, :line_id
    end
end
