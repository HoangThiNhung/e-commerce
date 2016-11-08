class Admin::BaseController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin

  protect_from_forgery

  layout "admin/base"

  private
  def authenticate_admin
    redirect_to root_path unless current_user.admin?
  end
end
