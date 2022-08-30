class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references:customer,foreign_key:true,null:false
      t.string:shipping_address,null:false
      t.string:shipping_number,null:false
      t.string:shipping_name,null:false
      t.integer:delivery_charge,null:false
      t.integer:payment,null:false
      t.integer:payment_method,null:false
      t.integer:payment_status,null:false
      
      t.timestamps null:false
    end
  end
end
