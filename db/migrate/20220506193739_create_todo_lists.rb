class CreateTodoLists < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_lists do |t|
      t.belongs_to :event
      t.text :memo, null: false, default: ''

      t.timestamps
    end
  end
end
