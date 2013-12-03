require 'test_helper'

class MarionetteModalRailsTest < ActionDispatch::IntegrationTest
  teardown { clean_sprockets_cache }

  test "engine is loaded" do
    assert_equal ::Rails::Engine, MarionetteModalRails::Rails::Engine.superclass
  end

  test "javascripts are served" do
    get "/assets/backbone.marionette.modals.js"
    assert_response :success
    get "/assets/backbone.modal.js"
    assert_response :success
    get "/assets/marionette.modal.js"
    assert_response :success
  end

  test "stylesheets are served" do
    get "/assets/marionette.modal.css"
    assert_response :success
    get "/assets/marionette.modal.theme.css"
    assert_response :success
  end

  test "stylesheets are available in a css sprockets require" do
    get "/assets/sprockets-require.css"
    assert_response :success
  end

  test "stylesheets are available in a sass import" do
    get "/assets/sass-import.css"
    assert_response :success
  end

  test "stylesheets are available in a scss import" do
    get "/assets/scss-import.css"
    assert_response :success
  end

  test 'javascripts are available as a js asset pipeline require' do
    get 'assets/application.js'
    assert_response :success
  end

  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
  end
end
