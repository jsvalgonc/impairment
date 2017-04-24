require 'test_helper'

class GrupoAnalisesControllerTest < ActionController::TestCase
  setup do
    @grupo_analise = grupo_analises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupo_analises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grupo_analise" do
    assert_difference('GrupoAnalise.count') do
      post :create, grupo_analise: { description: @grupo_analise.description, title: @grupo_analise.title }
    end

    assert_redirected_to grupo_analise_path(assigns(:grupo_analise))
  end

  test "should show grupo_analise" do
    get :show, id: @grupo_analise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grupo_analise
    assert_response :success
  end

  test "should update grupo_analise" do
    patch :update, id: @grupo_analise, grupo_analise: { description: @grupo_analise.description, title: @grupo_analise.title }
    assert_redirected_to grupo_analise_path(assigns(:grupo_analise))
  end

  test "should destroy grupo_analise" do
    assert_difference('GrupoAnalise.count', -1) do
      delete :destroy, id: @grupo_analise
    end

    assert_redirected_to grupo_analises_path
  end
end
