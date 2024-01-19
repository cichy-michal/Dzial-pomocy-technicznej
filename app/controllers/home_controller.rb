class HomeController < ApplicationController
  def index
    @aktualny = current_user.employee if current_user.present?
  end
end
