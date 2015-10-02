require 'test_helper'

class WorkPostsControllerTest < ActionController::TestCase
  setup do
    @work_post = work_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_post" do
    assert_difference('WorkPost.count') do
      post :create, work_post: { description: @work_post.description, title: @work_post.title }
    end

    assert_redirected_to work_post_path(assigns(:work_post))
  end

  test "should show work_post" do
    get :show, id: @work_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_post
    assert_response :success
  end

  test "should update work_post" do
    patch :update, id: @work_post, work_post: { description: @work_post.description, title: @work_post.title }
    assert_redirected_to work_post_path(assigns(:work_post))
  end

  test "should destroy work_post" do
    assert_difference('WorkPost.count', -1) do
      delete :destroy, id: @work_post
    end

    assert_redirected_to work_posts_path
  end
end
