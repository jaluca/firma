class CreateWorkers < ActiveRecord::Migration
  def self.up
    create_table :workers do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :workers
  end
end
