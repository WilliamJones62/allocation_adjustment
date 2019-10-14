class AddToItc5ToAllocations < ActiveRecord::Migration[5.1]
  def change
    add_column :allocations, :to_itc_5, :boolean
  end
end
