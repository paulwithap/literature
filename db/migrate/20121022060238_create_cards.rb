class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :number
      t.string :suit

      t.timestamps
    end
  end
end
