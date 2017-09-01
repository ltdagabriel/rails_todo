require 'test_helper'

class TarefasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tarefas_index_url
    assert_response :success
  end

  test "should get create" do
    get tarefas_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tarefas_destroy_url
    assert_response :success
  end

end
