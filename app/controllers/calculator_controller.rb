class CalculatorController < ApplicationController
  def index
    set_gender
    set_weight_in_kilos
    set_height_in_cm
    set_age_in_years
  end

  def calculate
    save_gender
    save_weight_in_kilos
    save_height_in_cm
    save_age_in_years

    redirect_to action: :index
  end

  private

    def form_params
      params.require(:parameters).permit(:gender, :weight_in_kilos, :height_in_cm, :age_in_years)
    end

    def set_gender
      return if !cookies[:gender].present?

      @gender = cookies[:gender].to_sym
    end

    def save_gender
      if form_params[:gender].present?
        cookies[:gender] = form_params[:gender]
        return
      end

      cookies.delete :gender
    end

    def set_weight_in_kilos
      return if !cookies[:weight_in_kilos].present?

      @weight_in_kilos = cookies[:weight_in_kilos].to_d
    end

    def save_weight_in_kilos
      if form_params[:weight_in_kilos].present?
        cookies[:weight_in_kilos] = form_params[:weight_in_kilos]
        return
      end

      cookies.delete :weight_in_kilos
    end

    def set_height_in_cm
      return if !cookies[:height_in_cm].present?

      @height_in_cm = cookies[:height_in_cm].to_d
    end

    def save_height_in_cm
      if form_params[:height_in_cm].present?
        cookies[:height_in_cm] = form_params[:height_in_cm]
        return
      end

      cookies.delete :height_in_cm
    end

    def set_age_in_years
      return if !cookies[:age_in_years].present?

      @age_in_years = cookies[:age_in_years].to_i
    end

    def save_age_in_years
      if form_params[:age_in_years].present?
        cookies[:age_in_years] = form_params[:age_in_years]
        return
      end

      cookies.delete :age_in_years
    end

end
