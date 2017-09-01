class ListasController < ApplicationController
  before_action :set_lista, only: [:destroy, :show, :edit, :update]

  def index
    @listas = Lista.all
  end

  def new
    @lista = Lista.new
  end

  def show

  end
  def edit
  end
  def update
    @lista.update(lista_params)

    redirect_to listas_path
  end

  def destroy
    @lista.destroy

    redirect_to listas_path
  end
  def create
    @lista = Lista.new(lista_params)
    respond_to do |format|
      if @lista.save
        format.html { redirect_to listas_path }
      else
        format.html {render :new}
      end
    end
  end

  private
def set_lista
  @lista = Lista.find(params[:id])
end

  def lista_params
    params.require(:lista).permit(:titulo,:descricao)
  end
end
