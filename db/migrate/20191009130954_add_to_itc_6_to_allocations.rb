class AddToItc6ToAllocations < ActiveRecord::Migration[5.1]
  def change
    add_column :allocations, :to_itc_6, :boolean
  end
end
