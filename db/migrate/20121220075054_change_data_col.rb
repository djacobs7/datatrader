class ChangeDataCol < ActiveRecord::Migration
  def up
    remove_column :data,:data
    add_column :data,:data,:string
  end

  def down
  end
end
