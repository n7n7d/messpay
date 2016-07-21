require 'test_helper'

class RateCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rate_card = rate_cards(:one)
  end

  test "should get index" do
    get rate_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_rate_card_url
    assert_response :success
  end

  test "should create rate_card" do
    assert_difference('RateCard.count') do
      post rate_cards_url, params: { rate_card: { daily_diet: @rate_card.daily_diet, establishment_charge: @rate_card.establishment_charge, extra_charge: @rate_card.extra_charge, hostel_id: @rate_card.hostel_id, maintenance_charge: @rate_card.maintenance_charge, staff_welfare_charge: @rate_card.staff_welfare_charge } }
    end

    assert_redirected_to rate_card_url(RateCard.last)
  end

  test "should show rate_card" do
    get rate_card_url(@rate_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_rate_card_url(@rate_card)
    assert_response :success
  end

  test "should update rate_card" do
    patch rate_card_url(@rate_card), params: { rate_card: { daily_diet: @rate_card.daily_diet, establishment_charge: @rate_card.establishment_charge, extra_charge: @rate_card.extra_charge, hostel_id: @rate_card.hostel_id, maintenance_charge: @rate_card.maintenance_charge, staff_welfare_charge: @rate_card.staff_welfare_charge } }
    assert_redirected_to rate_card_url(@rate_card)
  end

  test "should destroy rate_card" do
    assert_difference('RateCard.count', -1) do
      delete rate_card_url(@rate_card)
    end

    assert_redirected_to rate_cards_url
  end
end
