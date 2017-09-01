class AddCompletadaToTarefas < ActiveRecord::Migration[5.0]
  def change
    add_column :tarefas, :completada, :boolean
  end
end
