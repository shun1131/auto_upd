class RecordController < ApplicationController
  before_action :set_ransack, only: :index
  before_action :authenticate_user!

  def index
  end

  private
  def set_ransack
    @q = Record.all.ransack(params[:q])
    if params[:q].present?
      @records = @q.result(distinct: true)
    end
  end
end
