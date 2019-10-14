class AddToItc3ToAllocations < ActiveRecord::Migration[5.1]
  def change
    add_column :allocations, :to_itc_3, :boolean
  end
end
