class CreateTodoItem1s < ActiveRecord::Migration
  def change
    create_table :todo_item1s do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
