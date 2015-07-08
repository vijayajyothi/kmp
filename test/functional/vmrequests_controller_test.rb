require 'test_helper'

class VmrequestsControllerTest < ActionController::TestCase
  setup do
    @vmrequest = vmrequests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vmrequests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vmrequest" do
    assert_difference('Vmrequest.count') do
      post :create, vmrequest: { approval: @vmrequest.approval, comments: @vmrequest.comments, cpus: @vmrequest.cpus, environment: @vmrequest.environment, name: @vmrequest.name, os_type: @vmrequest.os_type, ram: @vmrequest.ram, requested_date: @vmrequest.requested_date, requester: @vmrequest.requester, space: @vmrequest.space, status: @vmrequest.status }
    end

    assert_redirected_to vmrequest_path(assigns(:vmrequest))
  end

  test "should show vmrequest" do
    get :show, id: @vmrequest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vmrequest
    assert_response :success
  end

  test "should update vmrequest" do
    put :update, id: @vmrequest, vmrequest: { approval: @vmrequest.approval, comments: @vmrequest.comments, cpus: @vmrequest.cpus, environment: @vmrequest.environment, name: @vmrequest.name, os_type: @vmrequest.os_type, ram: @vmrequest.ram, requested_date: @vmrequest.requested_date, requester: @vmrequest.requester, space: @vmrequest.space, status: @vmrequest.status }
    assert_redirected_to vmrequest_path(assigns(:vmrequest))
  end

  test "should destroy vmrequest" do
    assert_difference('Vmrequest.count', -1) do
      delete :destroy, id: @vmrequest
    end

    assert_redirected_to vmrequests_path
  end
end
