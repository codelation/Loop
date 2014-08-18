class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.text :body
      t.integer :budgeted_time
      t.integer :priority

      t.timestamps
    end
  end
end
