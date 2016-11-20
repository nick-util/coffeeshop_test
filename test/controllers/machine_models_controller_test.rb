require 'test_helper'

class MachineModelsControllerTest < ActionController::TestCase
  setup do
    @machine_model = MachineModel.first
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:machine_models)
  end


  test "should show machine_model" do
    get :show, id: @machine_model
    assert_response :success
  end

end
