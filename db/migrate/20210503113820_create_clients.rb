class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|

      t.string :client_number, null: false
      t.string :company
      t.string :company_kana
      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :phone_number
      t.string :phone_number_2
      t.string :postal_code
      t.string :prefecture
      t.string :municipalities
      t.string :block_number
      t.string :building
      t.string :category
      t.string :PIC
      t.string :details
      t.date :start_date
      t.string :remark 
      t.string :staff,          null: false
      t.boolean :done_flag,     null: false, default: "0"
      t.timestamps
    end
  end
end
