class PessoasController < ApplicationController
  
  def index
    render :index  
  end

  def create
    @response = ImportarService.call params[:arquivo]
    unless @response
      flash[:notice] = "Extensão inválida"
      render :index
    else
      flash[:notice] = "Dados importados com sucesso"
      render :show
    end
  end
end
