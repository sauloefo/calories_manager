module ApplicationHelper
  def ga_measurement_id
    measurement_id = ENV[:GA_MEASUREMENT_ID.to_s]

    return measurement_id if measurement_id.present?

    raise "Missing GA_MEASUREMENT_ID environment variable"
  end
end
