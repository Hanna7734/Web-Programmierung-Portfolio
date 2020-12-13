require "application_system_test_case"

class ArtikelsTest < ApplicationSystemTestCase
  setup do
    @artikel = artikels(:one)
  end

  test "visiting the index" do
    visit artikels_url
    assert_selector "h1", text: "Artikels"
  end

  test "creating a Artikel" do
    visit artikels_url
    click_on "New Artikel"

    fill_in "Anzahl", with: @artikel.anzahl
    fill_in "Artikelname", with: @artikel.artikelname
    fill_in "Artikelnummer", with: @artikel.artikelnummer
    fill_in "Beschreibung", with: @artikel.beschreibung
    fill_in "Marke", with: @artikel.marke
    fill_in "Preis", with: @artikel.preis
    fill_in "Verkaeufer", with: @artikel.verkaeufer
    click_on "Create Artikel"

    assert_text "Artikel was successfully created"
    click_on "Back"
  end

  test "updating a Artikel" do
    visit artikels_url
    click_on "Edit", match: :first

    fill_in "Anzahl", with: @artikel.anzahl
    fill_in "Artikelname", with: @artikel.artikelname
    fill_in "Artikelnummer", with: @artikel.artikelnummer
    fill_in "Beschreibung", with: @artikel.beschreibung
    fill_in "Marke", with: @artikel.marke
    fill_in "Preis", with: @artikel.preis
    fill_in "Verkaeufer", with: @artikel.verkaeufer
    click_on "Update Artikel"

    assert_text "Artikel was successfully updated"
    click_on "Back"
  end

  test "destroying a Artikel" do
    visit artikels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artikel was successfully destroyed"
  end
end
