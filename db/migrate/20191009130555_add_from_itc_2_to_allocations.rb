class AddFromItc2ToAllocations < ActiveRecord::Migration[5.1]
  def change
    add_column :allocations, :from_itc_2, :boolean
  end
end
