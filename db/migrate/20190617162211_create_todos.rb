class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :photo
      t.text :content

      t.timestamps
    end
  end
end
