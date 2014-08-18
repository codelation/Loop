class CreateDeliverables < ActiveRecord::Migration
  def change
    create_table :deliverables do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
