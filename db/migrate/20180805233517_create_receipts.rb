class CreateReceipts < ActiveRecord::Migration[5.1]
  def change
    create_table :receipts do |t|
      t.string :title
      t.string :location
      t.string :expense
      t.text :comments
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
