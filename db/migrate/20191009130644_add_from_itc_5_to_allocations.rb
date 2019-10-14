class AddFromItc5ToAllocations < ActiveRecord::Migration[5.1]
  def change
    add_column :allocations, :from_itc_5, :boolean
  end
end
