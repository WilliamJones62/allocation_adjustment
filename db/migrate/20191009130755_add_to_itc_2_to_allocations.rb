class AddToItc2ToAllocations < ActiveRecord::Migration[5.1]
  def change
    add_column :allocations, :to_itc_2, :boolean
  end
end
