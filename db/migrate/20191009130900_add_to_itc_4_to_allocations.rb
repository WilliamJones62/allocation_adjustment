class AddToItc4ToAllocations < ActiveRecord::Migration[5.1]
  def change
    add_column :allocations, :to_itc_4, :boolean
  end
end
