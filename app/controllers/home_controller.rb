class HomeController < ApplicationController
  def index
    @tvits = Tvit.includes(:user).order('created_at DESC').limit(20)
  end
end
