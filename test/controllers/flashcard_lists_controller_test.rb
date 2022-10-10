require 'test_helper'

class FlashcardListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flashcard_list = flashcard_lists(:one)
  end

  test "should get index" do
    get flashcard_lists_url, as: :json
    assert_response :success
  end

  test "should create flashcard_list" do
    assert_difference('FlashcardList.count') do
      post flashcard_lists_url, params: { flashcard_list: { difficulty: @flashcard_list.difficulty, name: @flashcard_list.name, photo: @flashcard_list.photo } }, as: :json
    end

    assert_response 201
  end

  test "should show flashcard_list" do
    get flashcard_list_url(@flashcard_list), as: :json
    assert_response :success
  end

  test "should update flashcard_list" do
    patch flashcard_list_url(@flashcard_list), params: { flashcard_list: { difficulty: @flashcard_list.difficulty, name: @flashcard_list.name, photo: @flashcard_list.photo } }, as: :json
    assert_response 200
  end

  test "should destroy flashcard_list" do
    assert_difference('FlashcardList.count', -1) do
      delete flashcard_list_url(@flashcard_list), as: :json
    end

    assert_response 204
  end
end
