class AddForeignKeyToWorkers < ActiveRecord::Migration
  def self.up
    add_column :workers, :company_id, :integer
  end

  def self.down
    remove_column :workers, :company_id
  end
end
