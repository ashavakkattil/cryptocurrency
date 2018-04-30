class AddMoreColumnsToCurrency < ActiveRecord::Migration[5.2]
  def change
    add_column :currencies, :price_usd, :float
    add_column :currencies, :price_btc, :float
    add_column :currencies, :volume_24h_usd, :int,  :limit => 8 
    add_column :currencies, :market_cap_usd, :bigint
    add_column :currencies, :available_supply, :bigint
    add_column :currencies, :total_supply, :bigint
    add_column :currencies, :percent_change_1h, :decimal
    add_column :currencies, :percent_change_24h, :decimal
    add_column :currencies, :percent_change_7d, :decimal
    add_column :currencies, :last_updated, :string
  end
end
