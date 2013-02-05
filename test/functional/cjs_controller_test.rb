require 'test_helper'

class CjsControllerTest < ActionController::TestCase
  setup do
    @cj = cjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cj" do
    assert_difference('Cj.count') do
      post :create, cj: { bj: @cj.bj, dl: @cj.dl, hx: @cj.hx, ksh: @cj.ksh, ls: @cj.ls, nj: @cj.nj, sw: @cj.sw, sx: @cj.sx, wl: @cj.wl, xm: @cj.xm, xx: @cj.xx, yw: @cj.yw, yy: @cj.yy, zh: @cj.zh, zkzh: @cj.zkzh, zz: @cj.zz }
    end

    assert_redirected_to cj_path(assigns(:cj))
  end

  test "should show cj" do
    get :show, id: @cj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cj
    assert_response :success
  end

  test "should update cj" do
    put :update, id: @cj, cj: { bj: @cj.bj, dl: @cj.dl, hx: @cj.hx, ksh: @cj.ksh, ls: @cj.ls, nj: @cj.nj, sw: @cj.sw, sx: @cj.sx, wl: @cj.wl, xm: @cj.xm, xx: @cj.xx, yw: @cj.yw, yy: @cj.yy, zh: @cj.zh, zkzh: @cj.zkzh, zz: @cj.zz }
    assert_redirected_to cj_path(assigns(:cj))
  end

  test "should destroy cj" do
    assert_difference('Cj.count', -1) do
      delete :destroy, id: @cj
    end

    assert_redirected_to cjs_path
  end
end
