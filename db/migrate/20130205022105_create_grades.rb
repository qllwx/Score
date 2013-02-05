class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :no
      t.string :name

      t.timestamps
    end
  end
end
