class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :xq
      t.string :xx
      t.string :nj
      t.string :bj
      t.integer :zh
      t.string :xm
      t.string :xb
      t.string :xh
      t.string :sfzh
      t.string :mz
      t.string :csd
      t.string :hkszd
      t.string :jtdz
      t.string :fqxm
      t.string :mqxm
      t.string :jhrxm
      t.string :lxdh
      t.string :byxx

      t.timestamps
    end
  end
end
