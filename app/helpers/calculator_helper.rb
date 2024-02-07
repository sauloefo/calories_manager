module CalculatorHelper
  def male_bmr(weight_in_kilos:, height_in_centimeters:, age_in_years:)
    66.473 + 13.7516 * weight_in_kilos + 5.0033 * height_in_centimeters - 6.755 * age_in_years
  end

  def tdee_for_sedentary_male(weight_in_kilos:, height_in_centimeters:, age_in_years:)
    activity_level_coeficients[:sedentary] * male_bmr(weight_in_kilos: weight_in_kilos, height_in_centimeters: height_in_centimeters, age_in_years: age_in_years)
  end

  def tdee_for_slightly_active_male(weight_in_kilos:, height_in_centimeters:, age_in_years:)
    activity_level_coeficients[:slightly_active] * male_bmr(weight_in_kilos: weight_in_kilos, height_in_centimeters: height_in_centimeters, age_in_years: age_in_years)
  end

  def tdee_for_moderately_active_male(weight_in_kilos:, height_in_centimeters:, age_in_years:)
    activity_level_coeficients[:moderately_active] * male_bmr(weight_in_kilos: weight_in_kilos, height_in_centimeters: height_in_centimeters, age_in_years: age_in_years)
  end

  def tdee_for_active_male(weight_in_kilos:, height_in_centimeters:, age_in_years:)
    activity_level_coeficients[:active] * male_bmr(weight_in_kilos: weight_in_kilos, height_in_centimeters: height_in_centimeters, age_in_years: age_in_years)
  end

  def tdee_for_very_active_male(weight_in_kilos:, height_in_centimeters:, age_in_years:)
    activity_level_coeficients[:very_active] * male_bmr(weight_in_kilos: weight_in_kilos, height_in_centimeters: height_in_centimeters, age_in_years: age_in_years)
  end

  def female_bmr(weight_in_kilos:, height_in_centimeters:, age_in_years:)
    655.0955 + 9.5634 * weight_in_kilos + 1.8496 * height_in_centimeters - 4.6756 * age_in_years
  end

  def tdee_for_sedentary_female(weight_in_kilos:, height_in_centimeters:, age_in_years:)
    1.2 * female_bmr(weight_in_kilos: weight_in_kilos, height_in_centimeters: height_in_centimeters, age_in_years: age_in_years)
  end

  def tdee_for_slightly_active_female(weight_in_kilos:, height_in_centimeters:, age_in_years:)
    activity_level_coeficients[:slightly_active] * female_bmr(weight_in_kilos: weight_in_kilos, height_in_centimeters: height_in_centimeters, age_in_years: age_in_years)
  end

  def tdee_for_moderately_active_female(weight_in_kilos:, height_in_centimeters:, age_in_years:)
    activity_level_coeficients[:moderately_active] * female_bmr(weight_in_kilos: weight_in_kilos, height_in_centimeters: height_in_centimeters, age_in_years: age_in_years)
  end

  def tdee_for_active_female(weight_in_kilos:, height_in_centimeters:, age_in_years:)
    activity_level_coeficients[:active] * female_bmr(weight_in_kilos: weight_in_kilos, height_in_centimeters: height_in_centimeters, age_in_years: age_in_years)
  end

  def tdee_for_very_active_female(weight_in_kilos:, height_in_centimeters:, age_in_years:)
    activity_level_coeficients[:very_active] * female_bmr(weight_in_kilos: weight_in_kilos, height_in_centimeters: height_in_centimeters, age_in_years: age_in_years)
  end

  def activity_levels
    %i[sedentary slightly_active moderately_active active very_active].to_set
  end

  def has_bmr?
    @gender.present? && @weight_in_kilos.present? && @height_in_cm.present? && @age_in_years.present?
  end

  def bmr
    return male_bmr weight_in_kilos: @weight_in_kilos, height_in_centimeters: @height_in_cm, age_in_years: @age_in_years if @gender == :male

    female_bmr weight_in_kilos: @weight_in_kilos, height_in_centimeters: @height_in_cm, age_in_years: @age_in_years
  end

  def has_tdee?
    has_bmr? && @activity_level.present?
  end

  def tdee
    activity_level_coeficients[@activity_level] * bmr
  end

  private

    def activity_level_coeficients()
      {
        sedentary: 1.2,
        slightly_active: 1.375,
        moderately_active: 1.55,
        active: 1.725,
        very_active: 1.9
      }
    end

end
