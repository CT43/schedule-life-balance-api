module Api::V1
  class SchedulesController < ApplicationController

    def index
      @schedules = Schedule.all
      render json: @schedules
    end

    def show
      @schedule = Schedule.find_by(id: params[:id])
      render json: @schedule
    end

    def create
      @schedule = Schedule.create(schedule_params)
      render json: @schedule
    end

    def update
    end

    def destroy
      @schedule = Schedule.find(params[:id])
      if @schedule.destroy
        head :no_content, status: :ok
      else
        render json: @schedule.errors, status: :unprocessable_entity
      end
    end

    private

      def schedule_params
        params.require(:schedule).permit(:date, :hours, :user_id)
      end

  end
end
