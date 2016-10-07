require 'test_helper'

class SongAliasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song_alias = song_aliases(:one)
  end

  test "should get index" do
    get song_aliases_url
    assert_response :success
  end

  test "should get new" do
    get new_song_alias_url
    assert_response :success
  end

  test "should create song_alias" do
    assert_difference('SongAlias.count') do
      post song_aliases_url, params: { song_alias: { alias: @song_alias.alias, song_id: @song_alias.song_id } }
    end

    assert_redirected_to song_alias_url(SongAlias.last)
  end

  test "should show song_alias" do
    get song_alias_url(@song_alias)
    assert_response :success
  end

  test "should get edit" do
    get edit_song_alias_url(@song_alias)
    assert_response :success
  end

  test "should update song_alias" do
    patch song_alias_url(@song_alias), params: { song_alias: { alias: @song_alias.alias, song_id: @song_alias.song_id } }
    assert_redirected_to song_alias_url(@song_alias)
  end

  test "should destroy song_alias" do
    assert_difference('SongAlias.count', -1) do
      delete song_alias_url(@song_alias)
    end

    assert_redirected_to song_aliases_url
  end
end
