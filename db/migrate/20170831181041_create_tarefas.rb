class CreateTarefas < ActiveRecord::Migration[5.0]
  def change
    create_table :tarefas do |t|
      t.string :conteudo
      t.references :lista, foreign_key: true

      t.timestamps
    end
  end
end
