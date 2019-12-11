class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :iName
      t.references :locations, null: false, foreign_key: true
      t.integer :iAvail
      t.integer :iUsed
      t.integer :iTotal
      t.string :iDesc

      t.timestamps
    end
  end
end
