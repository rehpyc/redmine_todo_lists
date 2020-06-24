class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.column :due,            :datetime
      t.column :done,           :boolean
      t.column :priority,       :integer
      t.column :parent_id,      :integer
      t.column :text,           :string
      t.column :author_id,      :integer
      t.column :assigned_id,    :integer
      t.column :issue_id,       :integer
      t.column :position,       :integer
      t.column :todoable_id,    :integer
      t.column :todoable_type,  :string
      t.column :completed_at,   :datetime
      t.timestamps
    end
  end
end
