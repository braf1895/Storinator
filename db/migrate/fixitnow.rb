class Fixitnow < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :loc_id, :integer
    add_foreign_key :items, :locations
  end
end
