class CreateCjs < ActiveRecord::Migration
  def change
    create_table :cjs do |t|
      t.string :ksh
      t.string :zkzh
      t.string :xx,:nj
      t.integer :bj,:zh
      t.string :xm
      t.integer :yw, :sx,:yy,:wl, :hx, :sw,:zz,:ls,:dl
      t.integer :zf

      t.timestamps
    end
  end
end
