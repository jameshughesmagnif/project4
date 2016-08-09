class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :months
      t.integer :monthly_price
      t.string :num_class

      t.timestamps null: false
    end
  end
end
