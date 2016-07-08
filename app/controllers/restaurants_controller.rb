class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def index
    @restaurants = Restaurant.all
  end


  def show
    @schedule = Schedule.find_by(restaurant_id: @restaurant.id)
  end


  def new
    @restaurant = Restaurant.new
  end


  def edit
  end


  def create
    @restaurant = Restaurant.new(restaurant_params)
      if @restaurant.save
        # レストラン情報の登録と同時にスケジュールも登録（更新なし状態）
        Schedule.create!(
          restaurant_id: @restaurant.id,
          time0000: 0,
          time0015: 0,
          time0030: 0,
          time0045: 0,
          time0100: 0,
          time0115: 0,
          time0130: 0,
          time0145: 0,
          time0200: 0,
          time0215: 0,
          time0230: 0,
          time0245: 0,
          time0300: 0,
          time0315: 0,
          time0330: 0,
          time0345: 0,
          time0400: 0,
          time0415: 0,
          time0430: 0,
          time0445: 0,
          time0500: 0,
          time0515: 0,
          time0530: 0,
          time0545: 0,
          time0600: 0,
          time0615: 0,
          time0630: 0,
          time0645: 0,
          time0700: 0,
          time0715: 0,
          time0730: 0,
          time0745: 0,
          time0800: 0,
          time0815: 0,
          time0830: 0,
          time0845: 0,
          time0900: 0,
          time0915: 0,
          time0930: 0,
          time0945: 0,
          time1000: 0,
          time1015: 0,
          time1030: 0,
          time1045: 0,
          time1100: 0,
          time1115: 0,
          time1130: 0,
          time1145: 0,
          time1200: 0,
          time1215: 0,
          time1230: 0,
          time1245: 0,
          time1300: 0,
          time1315: 0,
          time1330: 0,
          time1345: 0,
          time1400: 0,
          time1415: 0,
          time1430: 0,
          time1445: 0,
          time1500: 0,
          time1515: 0,
          time1530: 0,
          time1545: 0,
          time1600: 0,
          time1615: 0,
          time1630: 0,
          time1645: 0,
          time1700: 0,
          time1715: 0,
          time1730: 0,
          time1745: 0,
          time1800: 0,
          time1815: 0,
          time1830: 0,
          time1845: 0,
          time1900: 0,
          time1915: 0,
          time1930: 0,
          time1945: 0,
          time2000: 0,
          time2015: 0,
          time2030: 0,
          time2045: 0,
          time2100: 0,
          time2115: 0,
          time2130: 0,
          time2145: 0,
          time2200: 0,
          time2215: 0,
          time2230: 0,
          time2245: 0,
          time2300: 0,
          time2315: 0,
          time2330: 0,
          time2345: 0
        )
        redirect_to root_path, notice: 'Restaurant was successfully created.'
      else
        render :new
      end
  end


  def update
      if @restaurant.update(restaurant_params)
        redirect_to root_path, notice: 'Restaurant was successfully updated.'
      else
        render :edit
      end
  end


  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end


    def restaurant_params
      params.require(:restaurant).permit(:name, :new_information, :feature, :feature_contents, :feature_flag, :vacancy, :vacancy_state, :running, :memo)
    end
end
