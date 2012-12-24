class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :description
      t.string :name
      t.string :schema
      t.binary :data

      t.timestamps
    end
  end
end
