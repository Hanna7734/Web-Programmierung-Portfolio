require "application_system_test_case"

class SpendenWeihnachtsmarktsTest < ApplicationSystemTestCase
  setup do
    @spenden_weihnachtsmarkt = spenden_weihnachtsmarkts(:one)
  end

  test "visiting the index" do
    visit spenden_weihnachtsmarkts_url
    assert_selector "h1", text: "Spenden Weihnachtsmarkts"
  end

  test "creating a Spenden weihnachtsmarkt" do
    visit spenden_weihnachtsmarkts_url
    click_on "New Spenden Weihnachtsmarkt"

    fill_in "Iban", with: @spenden_weihnachtsmarkt.iban
    fill_in "Nachname", with: @spenden_weihnachtsmarkt.nachname
    fill_in "Summe", with: @spenden_weihnachtsmarkt.summe
    fill_in "Vorname", with: @spenden_weihnachtsmarkt.vorname
    click_on "Create Spenden weihnachtsmarkt"

    assert_text "Spenden weihnachtsmarkt was successfully created"
    click_on "Back"
  end

  test "updating a Spenden weihnachtsmarkt" do
    visit spenden_weihnachtsmarkts_url
    click_on "Edit", match: :first

    fill_in "Iban", with: @spenden_weihnachtsmarkt.iban
    fill_in "Nachname", with: @spenden_weihnachtsmarkt.nachname
    fill_in "Summe", with: @spenden_weihnachtsmarkt.summe
    fill_in "Vorname", with: @spenden_weihnachtsmarkt.vorname
    click_on "Update Spenden weihnachtsmarkt"

    assert_text "Spenden weihnachtsmarkt was successfully updated"
    click_on "Back"
  end

  test "destroying a Spenden weihnachtsmarkt" do
    visit spenden_weihnachtsmarkts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spenden weihnachtsmarkt was successfully destroyed"
  end
end
