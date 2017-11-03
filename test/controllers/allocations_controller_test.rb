require 'test_helper'

class AllocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allocation = allocations(:one)
  end

  test "should get index" do
    get allocations_url
    assert_response :success
  end

  test "should get new" do
    get new_allocation_url
    assert_response :success
  end

  test "should create allocation" do
    assert_difference('Allocation.count') do
      post allocations_url, params: { allocation: { from_cc_1: @allocation.from_cc_1, from_cc_1: @allocation.from_cc_1, from_cc_3: @allocation.from_cc_3, from_cc_4: @allocation.from_cc_4, from_cc_5: @allocation.from_cc_5, from_cc_6: @allocation.from_cc_6, from_channel_1: @allocation.from_channel_1, from_channel_2: @allocation.from_channel_2, from_channel_3: @allocation.from_channel_3, from_channel_4: @allocation.from_channel_4, from_channel_5: @allocation.from_channel_5, from_channel_6: @allocation.from_channel_6, from_sku_1: @allocation.from_sku_1, from_sku_2: @allocation.from_sku_2, from_sku_3: @allocation.from_sku_3, from_sku_4: @allocation.from_sku_4, from_sku_5: @allocation.from_sku_5, from_sku_6: @allocation.from_sku_6, from_units_1: @allocation.from_units_1, from_units_2: @allocation.from_units_2, from_units_3: @allocation.from_units_3, from_units_4: @allocation.from_units_4, from_units_5: @allocation.from_units_5, from_units_6: @allocation.from_units_6, name: @allocation.name, to_cc_1: @allocation.to_cc_1, to_cc_2: @allocation.to_cc_2, to_cc_3: @allocation.to_cc_3, to_cc_4: @allocation.to_cc_4, to_cc_5: @allocation.to_cc_5, to_cc_6: @allocation.to_cc_6, to_channel_1: @allocation.to_channel_1, to_channel_2: @allocation.to_channel_2, to_channel_3: @allocation.to_channel_3, to_channel_4: @allocation.to_channel_4, to_channel_5: @allocation.to_channel_5, to_channel_6: @allocation.to_channel_6, to_sku_1: @allocation.to_sku_1, to_sku_2: @allocation.to_sku_2, to_sku_3: @allocation.to_sku_3, to_sku_4: @allocation.to_sku_4, to_sku_5: @allocation.to_sku_5, to_sku_6: @allocation.to_sku_6, to_units_1: @allocation.to_units_1, to_units_2: @allocation.to_units_2, to_units_3: @allocation.to_units_3, to_units_4: @allocation.to_units_4, to_units_5: @allocation.to_units_5, to_units_6: @allocation.to_units_6 } }
    end

    assert_redirected_to allocation_url(Allocation.last)
  end

  test "should show allocation" do
    get allocation_url(@allocation)
    assert_response :success
  end

  test "should get edit" do
    get edit_allocation_url(@allocation)
    assert_response :success
  end

  test "should update allocation" do
    patch allocation_url(@allocation), params: { allocation: { from_cc_1: @allocation.from_cc_1, from_cc_1: @allocation.from_cc_1, from_cc_3: @allocation.from_cc_3, from_cc_4: @allocation.from_cc_4, from_cc_5: @allocation.from_cc_5, from_cc_6: @allocation.from_cc_6, from_channel_1: @allocation.from_channel_1, from_channel_2: @allocation.from_channel_2, from_channel_3: @allocation.from_channel_3, from_channel_4: @allocation.from_channel_4, from_channel_5: @allocation.from_channel_5, from_channel_6: @allocation.from_channel_6, from_sku_1: @allocation.from_sku_1, from_sku_2: @allocation.from_sku_2, from_sku_3: @allocation.from_sku_3, from_sku_4: @allocation.from_sku_4, from_sku_5: @allocation.from_sku_5, from_sku_6: @allocation.from_sku_6, from_units_1: @allocation.from_units_1, from_units_2: @allocation.from_units_2, from_units_3: @allocation.from_units_3, from_units_4: @allocation.from_units_4, from_units_5: @allocation.from_units_5, from_units_6: @allocation.from_units_6, name: @allocation.name, to_cc_1: @allocation.to_cc_1, to_cc_2: @allocation.to_cc_2, to_cc_3: @allocation.to_cc_3, to_cc_4: @allocation.to_cc_4, to_cc_5: @allocation.to_cc_5, to_cc_6: @allocation.to_cc_6, to_channel_1: @allocation.to_channel_1, to_channel_2: @allocation.to_channel_2, to_channel_3: @allocation.to_channel_3, to_channel_4: @allocation.to_channel_4, to_channel_5: @allocation.to_channel_5, to_channel_6: @allocation.to_channel_6, to_sku_1: @allocation.to_sku_1, to_sku_2: @allocation.to_sku_2, to_sku_3: @allocation.to_sku_3, to_sku_4: @allocation.to_sku_4, to_sku_5: @allocation.to_sku_5, to_sku_6: @allocation.to_sku_6, to_units_1: @allocation.to_units_1, to_units_2: @allocation.to_units_2, to_units_3: @allocation.to_units_3, to_units_4: @allocation.to_units_4, to_units_5: @allocation.to_units_5, to_units_6: @allocation.to_units_6 } }
    assert_redirected_to allocation_url(@allocation)
  end

  test "should destroy allocation" do
    assert_difference('Allocation.count', -1) do
      delete allocation_url(@allocation)
    end

    assert_redirected_to allocations_url
  end
end
