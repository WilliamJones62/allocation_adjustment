class AddFromCc2ToAllocations < ActiveRecord::Migration[5.1]
  def change
    add_column :allocations, :from_cc_2, :string
  end
end
