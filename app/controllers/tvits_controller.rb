class TvitsController < ApplicationController
  before_action :authenticate_user!, only: %i(create)
  def create
    tvit = current_user.tvits.new(tvit_params)
    if tvit.save
      redirect_to tvit
    else
      redirect_to :root, flash: {alert: 'Failed to create your tvit: %s' % tvit.errors.full_messages}
    end
  end

  def show
    @tvit = Tvit.find(params[:id])
  end

  private

  def tvit_params
    params.require(:tvit).permit(:status)
  end
end
