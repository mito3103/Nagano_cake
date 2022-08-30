class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.references:customer,foreign_key:true,null:false
      t.references:item,foreign_key:true,null:false
      t.integer:ammount,null:false
      t.integer:production_status,null:false
      t.integer:market_price,null:false
      
      t.timestamps null:false
    end
  end
end
