class AddAmountPaidAndBalanceToUser < ActiveRecord::Migration
  def change
    add_column :users, :amount_paid, :integer, :default => 0
        add_column :users, :balance, :integer, :default => 20000
  end
end
