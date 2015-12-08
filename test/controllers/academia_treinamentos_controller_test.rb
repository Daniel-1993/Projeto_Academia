require 'test_helper'

class AcademiaTreinamentosControllerTest < ActionController::TestCase
  setup do
    @academia_treinamento = academia_treinamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:academia_treinamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create academia_treinamento" do
    assert_difference('AcademiaTreinamento.count') do
      post :create, academia_treinamento: { local: @academia_treinamento.local, nome: @academia_treinamento.nome }
    end

    assert_redirected_to academia_treinamento_path(assigns(:academia_treinamento))
  end

  test "should show academia_treinamento" do
    get :show, id: @academia_treinamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @academia_treinamento
    assert_response :success
  end

  test "should update academia_treinamento" do
    patch :update, id: @academia_treinamento, academia_treinamento: { local: @academia_treinamento.local, nome: @academia_treinamento.nome }
    assert_redirected_to academia_treinamento_path(assigns(:academia_treinamento))
  end

  test "should destroy academia_treinamento" do
    assert_difference('AcademiaTreinamento.count', -1) do
      delete :destroy, id: @academia_treinamento
    end

    assert_redirected_to academia_treinamentos_path
  end
end
