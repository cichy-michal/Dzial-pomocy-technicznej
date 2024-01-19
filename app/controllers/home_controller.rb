class HomeController < ApplicationController
  def index
    @employee = current_user.employee if current_user.present?
  end
end
