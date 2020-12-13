require 'test_helper'

class SpendenWeihnachtsmarktsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spenden_weihnachtsmarkt = spenden_weihnachtsmarkts(:one)
  end

  test "should get index" do
    get spenden_weihnachtsmarkts_url
    assert_response :success
  end

  test "should get new" do
    get new_spenden_weihnachtsmarkt_url
    assert_response :success
  end

  test "should create spenden_weihnachtsmarkt" do
    assert_difference('SpendenWeihnachtsmarkt.count') do
      post spenden_weihnachtsmarkts_url, params: { spenden_weihnachtsmarkt: { iban: @spenden_weihnachtsmarkt.iban, nachname: @spenden_weihnachtsmarkt.nachname, summe: @spenden_weihnachtsmarkt.summe, vorname: @spenden_weihnachtsmarkt.vorname } }
    end

    assert_redirected_to spenden_weihnachtsmarkt_url(SpendenWeihnachtsmarkt.last)
  end

  test "should show spenden_weihnachtsmarkt" do
    get spenden_weihnachtsmarkt_url(@spenden_weihnachtsmarkt)
    assert_response :success
  end

  test "should get edit" do
    get edit_spenden_weihnachtsmarkt_url(@spenden_weihnachtsmarkt)
    assert_response :success
  end

  test "should update spenden_weihnachtsmarkt" do
    patch spenden_weihnachtsmarkt_url(@spenden_weihnachtsmarkt), params: { spenden_weihnachtsmarkt: { iban: @spenden_weihnachtsmarkt.iban, nachname: @spenden_weihnachtsmarkt.nachname, summe: @spenden_weihnachtsmarkt.summe, vorname: @spenden_weihnachtsmarkt.vorname } }
    assert_redirected_to spenden_weihnachtsmarkt_url(@spenden_weihnachtsmarkt)
  end

  test "should destroy spenden_weihnachtsmarkt" do
    assert_difference('SpendenWeihnachtsmarkt.count', -1) do
      delete spenden_weihnachtsmarkt_url(@spenden_weihnachtsmarkt)
    end

    assert_redirected_to spenden_weihnachtsmarkts_url
  end
end
