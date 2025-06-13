class CreateInformation < ActiveRecord::Migration[8.0]
  def change
    create_table :information do |t|
      t.text :text1
      t.text :text2
      t.text :text3
      t.text :text4
      t.text :text5
      t.text :text6
      t.text :text7
      t.string :whatsapp_number
      t.string :facebook_link

      t.timestamps
    end
  end
end
