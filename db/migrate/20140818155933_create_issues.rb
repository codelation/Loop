class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.belongs_to :deliverable
      t.string :title
      t.text :body
      t.integer :budgeted_time
      t.integer :priority, default: 9999

      t.timestamps
    end
  end
end
