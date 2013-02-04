require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { bj: @student.bj, byxx: @student.byxx, csd: @student.csd, fqxm: @student.fqxm, hkszd: @student.hkszd, jhrxm: @student.jhrxm, jtdz: @student.jtdz, lxdh: @student.lxdh, mqxm: @student.mqxm, mz: @student.mz, nj: @student.nj, sfzh: @student.sfzh, xb: @student.xb, xh: @student.xh, xm: @student.xm, xq: @student.xq, xx: @student.xx, zh: @student.zh }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    put :update, id: @student, student: { bj: @student.bj, byxx: @student.byxx, csd: @student.csd, fqxm: @student.fqxm, hkszd: @student.hkszd, jhrxm: @student.jhrxm, jtdz: @student.jtdz, lxdh: @student.lxdh, mqxm: @student.mqxm, mz: @student.mz, nj: @student.nj, sfzh: @student.sfzh, xb: @student.xb, xh: @student.xh, xm: @student.xm, xq: @student.xq, xx: @student.xx, zh: @student.zh }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
