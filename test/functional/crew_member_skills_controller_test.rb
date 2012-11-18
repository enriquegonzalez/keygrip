require 'test_helper'

class CrewMemberSkillsControllerTest < ActionController::TestCase
  setup do
    @crew_member_skill = crew_member_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crew_member_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crew_member_skill" do
    assert_difference('CrewMemberSkill.count') do
      post :create, crew_member_skill: { crew_member_id: @crew_member_skill.crew_member_id, skill_id: @crew_member_skill.skill_id }
    end

    assert_redirected_to crew_member_skill_path(assigns(:crew_member_skill))
  end

  test "should show crew_member_skill" do
    get :show, id: @crew_member_skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crew_member_skill
    assert_response :success
  end

  test "should update crew_member_skill" do
    put :update, id: @crew_member_skill, crew_member_skill: { crew_member_id: @crew_member_skill.crew_member_id, skill_id: @crew_member_skill.skill_id }
    assert_redirected_to crew_member_skill_path(assigns(:crew_member_skill))
  end

  test "should destroy crew_member_skill" do
    assert_difference('CrewMemberSkill.count', -1) do
      delete :destroy, id: @crew_member_skill
    end

    assert_redirected_to crew_member_skills_path
  end
end
