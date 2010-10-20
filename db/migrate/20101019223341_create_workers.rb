class CreateWorkers < ActiveRecord::Migration
  def self.up
    create_table :workers do |t|
      t.string :name
      t.string :surname

      t.timestamps
    end
  end

  def self.down
    drop_table :workers
  end
end
