require "application_system_test_case"

class InformationTest < ApplicationSystemTestCase
  setup do
    @information = information(:one)
  end

  test "visiting the index" do
    visit information_url
    assert_selector "h1", text: "Information"
  end

  test "should create information" do
    visit information_url
    click_on "New information"

    fill_in "Facebook link", with: @information.facebook_link
    fill_in "Text1", with: @information.text1
    fill_in "Text2", with: @information.text2
    fill_in "Text3", with: @information.text3
    fill_in "Text4", with: @information.text4
    fill_in "Text5", with: @information.text5
    fill_in "Text6", with: @information.text6
    fill_in "Text7", with: @information.text7
    fill_in "Whatsapp number", with: @information.whatsapp_number
    click_on "Create Information"

    assert_text "Information was successfully created"
    click_on "Back"
  end

  test "should update Information" do
    visit information_url(@information)
    click_on "Edit this information", match: :first

    fill_in "Facebook link", with: @information.facebook_link
    fill_in "Text1", with: @information.text1
    fill_in "Text2", with: @information.text2
    fill_in "Text3", with: @information.text3
    fill_in "Text4", with: @information.text4
    fill_in "Text5", with: @information.text5
    fill_in "Text6", with: @information.text6
    fill_in "Text7", with: @information.text7
    fill_in "Whatsapp number", with: @information.whatsapp_number
    click_on "Update Information"

    assert_text "Information was successfully updated"
    click_on "Back"
  end

  test "should destroy Information" do
    visit information_url(@information)
    click_on "Destroy this information", match: :first

    assert_text "Information was successfully destroyed"
  end
end
