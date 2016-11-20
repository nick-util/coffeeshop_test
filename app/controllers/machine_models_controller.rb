class MachineModelsController < ApplicationController
  # GET /machine_models
  # GET /machine_models.json
  def index
    @machine_models = MachineModel.all
  end

  # GET /machine_models/1
  # GET /machine_models/1.json
  def show
    @machine_model = MachineModel.find(params[:id])
  end

end
