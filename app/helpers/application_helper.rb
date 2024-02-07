module ApplicationHelper
  def ga_measurement_id
    measurement_id = ENV[:GA_MEASUREMENT_ID.to_s]

    return measurement_id if measurement_id.present?

    raise "Missing GA_MEASUREMENT_ID environment variable"
  end

  def available_locales
    return I18n.available_locales.collect do |language_code|
      [I18n.translate(:language_name, locale: language_code), language_code]
    end
  end
end
