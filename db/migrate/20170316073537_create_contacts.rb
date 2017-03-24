class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :phone
      t.string :name
      t.text :message

      t.timestamps
    end
  end
end
