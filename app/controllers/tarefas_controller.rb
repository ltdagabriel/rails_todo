class TarefasController < ApplicationController
    before_action :set_lista
    before_action :set_tarefa, only: [:destroy, :completar]

  def index
  end

  def create
    @tarefa = @lista.tarefas.build(tarefa_params)
    @tarefa.save

    redirect_to @lista
  end

  def destroy
    @tarefa.destroy
    redirect_to @lista
  end

  def completar
    @tarefa.completada = true
    @tarefa.save

    redirect_to @lista
  end

  private
  def set_lista
    @lista= Lista.find(params[:lista_id])
  end

  def set_tarefa
    @tarefa = @lista.tarefas.find(params[:id])
  end

  def tarefa_params
    params.require(:tarefa).permit(:conteudo)
  end
end
