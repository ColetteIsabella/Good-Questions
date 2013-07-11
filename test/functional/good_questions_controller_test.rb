require 'test_helper'

class GoodQuestionsControllerTest < ActionController::TestCase
  setup do
    @good_question = good_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:good_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create good_question" do
    assert_difference('GoodQuestion.count') do
      post :create, good_question: { question: @good_question.question, why: @good_question.why }
    end

    assert_redirected_to good_question_path(assigns(:good_question))
  end

  test "should show good_question" do
    get :show, id: @good_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @good_question
    assert_response :success
  end

  test "should update good_question" do
    put :update, id: @good_question, good_question: { question: @good_question.question, why: @good_question.why }
    assert_redirected_to good_question_path(assigns(:good_question))
  end

  test "should destroy good_question" do
    assert_difference('GoodQuestion.count', -1) do
      delete :destroy, id: @good_question
    end

    assert_redirected_to good_questions_path
  end
end
