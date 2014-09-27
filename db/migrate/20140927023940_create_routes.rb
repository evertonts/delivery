class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :source, limit: 16
      t.string :destination, limit: 16
      t.decimal :distance, scale: 3, precision: 10
      t.references :map
      t.timestamps
    end
  end
end
