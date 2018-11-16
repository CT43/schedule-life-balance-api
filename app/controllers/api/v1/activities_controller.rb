module Api::V1
  class ActivitiesController < ApplicationController

    def index
      @activities = Activity.all
      selectedActivities = @activities.select { |activity| activity.schedule_id === params[:q].to_i}
      render json: selectedActivities
    end

    def create

      @activity = Activity.new(activity_params)
      @activity.duration_min = @activity.end_time_min - @activity.start_time_min
      @activity.save
      render json: @activity
    end

    def update
    end

    def destroy
      @activity = Activity.find(params[:id])
      if @activity.destroy
        head :no_content, status: :ok
      else
        render json: @activity.errors, status: :unprocessable_entity
      end
    end

    private

      def activity_params
        params.require(:activity).permit(:name, :duration, :schedule_id, :category_id, :start_time, :end_time, :start_time_min, :end_time_min, :q)
      end

  end
end
