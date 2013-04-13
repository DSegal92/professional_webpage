class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :message
      t.string :name
      t.string :topic

      t.timestamps
    end
  end
end
