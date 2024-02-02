class CalculatorHelperTest < ActionView::TestCase
  test "should get BMR for male" do
    expected_result = 2_254.5727

    assert_equal expected_result, male_bmr(
      weight_in_kilos: 110,
      height_in_centimeters: 189,
      age_in_years: 40
    )
  end

  test "should get TDEE for sendentary male" do
    expected_result = 2_705.48724

    assert_equal expected_result, tdee_for_sedentary_male(
      weight_in_kilos: 110,
      height_in_centimeters: 189,
      age_in_years: 40
    )
  end

  test "should get TDEE for slightly active male" do
    expected_result = 3_100.0374625000004

    assert_equal expected_result, tdee_for_slightly_active_male(
      weight_in_kilos: 110,
      height_in_centimeters: 189,
      age_in_years: 40
    )
  end

  test "should get TDEE for moderately active male" do
    expected_result = 3_494.5876850000004

    assert_equal expected_result, tdee_for_moderately_active_male(
      weight_in_kilos: 110,
      height_in_centimeters: 189,
      age_in_years: 40
    )
  end

  test "should get TDEE for active male" do
    expected_result = 3_889.1379075000003

    assert_equal expected_result, tdee_for_active_male(
      weight_in_kilos: 110,
      height_in_centimeters: 189,
      age_in_years: 40
    )
  end

  test "should get TDEE for very active male" do
    expected_result = 4_283.6881300000005

    assert_equal expected_result, tdee_for_very_active_male(
      weight_in_kilos: 110,
      height_in_centimeters: 189,
      age_in_years: 40
    )
  end

  test "should get BMR for female" do
    expected_result = 1498.6975

    assert_equal expected_result, female_bmr(
      weight_in_kilos: 70,
      height_in_centimeters: 170,
      age_in_years: 30
    )
  end

  test "should get TDEE for sendentary female" do
    expected_result = 1_798.437

    assert_equal expected_result, tdee_for_sedentary_female(
      weight_in_kilos: 70,
      height_in_centimeters: 170,
      age_in_years: 30
    )
  end

  test "should get TDEE for slightly active female" do
    expected_result = 2_060.7090625

    assert_equal expected_result, tdee_for_slightly_active_female(
      weight_in_kilos: 70,
      height_in_centimeters: 170,
      age_in_years: 30
    )
  end

  test "should get TDEE for moderately active female" do
    expected_result = 2_322.9811250000002

    assert_equal expected_result, tdee_for_moderately_active_female(
      weight_in_kilos: 70,
      height_in_centimeters: 170,
      age_in_years: 30
    )
  end

  test "should get TDEE for active female" do
    expected_result = 2_585.2531875

    assert_equal expected_result, tdee_for_active_female(
      weight_in_kilos: 70,
      height_in_centimeters: 170,
      age_in_years: 30
    )
  end

  test "should get TDEE for very active female" do
    expected_result = 2_847.5252499999997

    assert_equal expected_result, tdee_for_very_active_female(
      weight_in_kilos: 70,
      height_in_centimeters: 170,
      age_in_years: 30
    )
  end
end
