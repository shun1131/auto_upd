class RecordController < ApplicationController
  def index
    @records = Record.all.order(created_at: :desc)
  end
end
