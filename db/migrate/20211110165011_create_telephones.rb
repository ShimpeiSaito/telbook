class CreateTelephones < ActiveRecord::Migration[5.2]
  def change
    create_table :telephones do |t|
      t.string :number, null: true
      t.boolean :cellphone, null: true

      t.timestamps
    end
  end
end
