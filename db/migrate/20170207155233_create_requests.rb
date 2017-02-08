class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :reqtype
      t.integer :phone
      t.string :fromdate
      t.string :todate
      t.string :content

      t.timestamps
    end
  end
end
