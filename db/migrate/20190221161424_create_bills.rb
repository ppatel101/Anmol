class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :name
      t.string :bill_no
      t.string :date
      t.string :amount
      t.string :detail
      t.string :re_sph_dist
      t.string :re_sph_nr
      t.string :re_cyl_dist
      t.string :re_cyl_nr
      t.string :re_axis
      t.string :le_sph_dist
      t.string :le_sph_nr
      t.string :le_cyl_dist
      t.string :le_cyl_nr
      t.string :le_axis

      t.timestamps
    end
  end
end
