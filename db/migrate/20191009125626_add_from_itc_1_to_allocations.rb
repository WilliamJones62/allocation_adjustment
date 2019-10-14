class AddFromItc1ToAllocations < ActiveRecord::Migration[5.1]
  def change
    add_column :allocations, :from_itc_1, :boolean
  end
end
