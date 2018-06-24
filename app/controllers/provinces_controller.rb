class ProvincesController < ApplicationController

  def index
    @provinces = Province.all

    @tu_nombre = "Matias"
    @tipo_usuario = "usuario"

  end

end
