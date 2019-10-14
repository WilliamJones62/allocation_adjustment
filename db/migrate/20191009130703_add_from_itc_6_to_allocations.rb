class AddFromItc6ToAllocations < ActiveRecord::Migration[5.1]
  def change
    add_column :allocations, :from_itc_6, :boolean
  end
end
