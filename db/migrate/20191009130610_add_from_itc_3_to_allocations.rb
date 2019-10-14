class AddFromItc3ToAllocations < ActiveRecord::Migration[5.1]
  def change
    add_column :allocations, :from_itc_3, :boolean
  end
end
