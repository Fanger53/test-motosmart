class Api::V1::RankingsController < ApplicationController
  before_action :authenticate_user

  def current
    @rankings = Ranking.includes(:user).order(kilometers: :desc)
    # render 'api/v1/rankings/index'
    render json: @rankings, status: 200
  end

  def by_month_year
    year = params[:year]
    month = params[:month]
    start_date = Date.new(year.to_i, month.to_i, 1)
    end_date = start_date.end_of_month

    rankings = Ranking.includes(:user).where(start_date: start_date..end_date).order(kilometers: :desc)

    render json: rankings, status: 200
  end

  def record
    @user = User.find_by(id: params[:user_id])   
    if @user
      @ranking = @user.rankings.build(kilometers: params[:kilometers])
      
      if @ranking.save
        render json: { message: 'Kilometers recorded successfully' }
      else
        render json: { error: 'Failed to save kilometers' }, status: :unprocessable_entity
      end
    else
      render json: { error: 'User not found' }, status: :not_found
    end
  end

  private

  def authenticate_user
    @user = User.find_by(uuid: params[:uuid], token: params[:token])
    render json: { error: 'Invalid UUID or token' }, status: :unauthorized unless @user
  end


end
