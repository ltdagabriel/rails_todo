class CreateListas < ActiveRecord::Migration[5.0]
  def change
    create_table :listas do |t|
      t.string :titulo
      t.text :descricao

      t.timestamps
    end
  end
end
