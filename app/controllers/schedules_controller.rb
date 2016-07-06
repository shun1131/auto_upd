class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:edit, :update]
  before_action :authenticate_user!


  def index
    @schedules = Schedule.all
  end


  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @schedule   = Schedule.new
  end


  def edit
  end


  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to root_path, notice: 'Schedule was successfully created.'
    else
      render :new
    end
  end


  def update
      if @schedule.update(schedule_params)
        redirect_to root_path, notice: 'Schedule was successfully updated.'
      else
        render :edit
      end
  end


  private
    def set_schedule
      @restaurant = Restaurant.find(params[:restaurant_id])
      @schedule   = Schedule.find(params[:id])
    end


    def schedule_params
      params.require(:schedule).permit(:restaurant_id, :time0000, :time0015, :time0030, :time0045, :time0100, :time0115, :time0130, :time0145, :time0200, :time0215, :time0230, :time0245, :time0300, :time0315, :time0330, :time0345, :time0400, :time0415, :time0430, :time0445, :time0500, :time0515, :time0530, :time0545, :time0600, :time0615, :time0630, :time0645, :time0700, :time0715, :time0730, :time0745, :time0800, :time0815, :time0830, :time0845, :time0900, :time0915, :time0930, :time0945, :time1000, :time1015, :time1030, :time1045, :time1100, :time1115, :time1130, :time1145, :time1200, :time1215, :time1230, :time1245, :time1300, :time1315, :time1330, :time1345, :time1400, :time1415, :time1430, :time1445, :time1500, :time1515, :time1530, :time1545, :time1600, :time1615, :time1630, :time1645, :time1700, :time1715, :time1730, :time1745, :time1800, :time1815, :time1830, :time1845, :time1900, :time1915, :time1930, :time1945, :time2000, :time2015, :time2030, :time2045, :time2100, :time2115, :time2130, :time2145, :time2200, :time2215, :time2230, :time2245, :time2300, :time2315, :time2330, :time2345)
    end
end
