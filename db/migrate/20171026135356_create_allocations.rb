class CreateAllocations < ActiveRecord::Migration[5.1]
  def change
    create_table :allocations do |t|
      t.string :name
      t.string :from_channel_1
      t.string :from_cc_1
      t.string :from_sku_1
      t.integer :from_units_1
      t.string :from_channel_2
      t.string :from_cc_1
      t.string :from_sku_2
      t.integer :from_units_2
      t.string :from_channel_3
      t.string :from_cc_3
      t.string :from_sku_3
      t.integer :from_units_3
      t.string :from_channel_4
      t.string :from_cc_4
      t.string :from_sku_4
      t.integer :from_units_4
      t.string :from_channel_5
      t.string :from_cc_5
      t.string :from_sku_5
      t.integer :from_units_5
      t.string :from_channel_6
      t.string :from_cc_6
      t.string :from_sku_6
      t.integer :from_units_6
      t.string :to_channel_1
      t.string :to_cc_1
      t.string :to_sku_1
      t.integer :to_units_1
      t.string :to_channel_2
      t.string :to_cc_2
      t.string :to_sku_2
      t.integer :to_units_2
      t.string :to_channel_3
      t.string :to_cc_3
      t.string :to_sku_3
      t.integer :to_units_3
      t.string :to_channel_4
      t.string :to_cc_4
      t.string :to_sku_4
      t.integer :to_units_4
      t.string :to_channel_5
      t.string :to_cc_5
      t.string :to_sku_5
      t.integer :to_units_5
      t.string :to_channel_6
      t.string :to_cc_6
      t.string :to_sku_6
      t.integer :to_units_6

      t.timestamps
    end
  end
end
