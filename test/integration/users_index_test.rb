require 'test_helper'

class UsersIndexTest < ActionDispatch::IntegrationTest
  def setup
    @admin          = users(:michael)
    @non_admin      = users(:archer)
    @not_activated  = users(:unactive)
  end

  test "index as admin including pagination and delete links" do
    log_in_as(@admin)
    get users_path
    assert_template 'users/index'
    assert_select 'div.pagination'
    first_page_of_users = User.where(activated: true).paginate(page: 1)
    first_page_of_users.each do |user|
      assert_select 'a[href=?]', user_path(user), text: user.name
      unless user == @admin
        assert_select 'a[href=?]', user_path(user), text: 'delete'
      end
    end
    assert_difference 'User.count', -1 do
      delete user_path(@non_admin)
    end
  end

  test "index as non-admin and only active users" do
    log_in_as(@non_admin)
    get users_path
    assert_select 'a', text: 'delete', count: 0
    assert_select 'a[href=?]', user_path(@not_activated), text: @not_activated.name, count: 0
  end

  test "should redirect to root_url when user not activated" do
    log_in_as(@not_activated)
    assert_redirected_to root_url
  end

  test "should redirect to profile when user is activated" do
    log_in_as(@non_admin)
    assert_redirected_to @non_admin
  end

end
