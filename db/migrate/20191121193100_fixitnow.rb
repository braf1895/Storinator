class Fixitnow < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :locations, foreign_key: true
  end
end
