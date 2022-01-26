class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.float :value
      t.timestamps
    end

    add_index :records, :created_at
  end
end
