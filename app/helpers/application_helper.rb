module ApplicationHelper
  def ga_measurement_id
    ENV[:GA_MEASUREMENT_ID] if ENV[:GA_MEASUREMENT_ID].present?

    raise "Missing GA_MEASUREMENT_ID environment variable"
  end
end
