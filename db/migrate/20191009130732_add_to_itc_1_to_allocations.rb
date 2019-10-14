class AddToItc1ToAllocations < ActiveRecord::Migration[5.1]
  def change
    add_column :allocations, :to_itc_1, :boolean
  end
end
