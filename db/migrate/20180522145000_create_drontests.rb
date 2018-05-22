class CreateDrontests < ActiveRecord::Migration[5.1]
  def change
    create_table :drontests do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :appointment

      t.timestamps
    end
  end
end
