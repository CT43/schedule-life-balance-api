module Api::V1
  class ActivitiesController < ApplicationController

    def index
    end

    def create
      @activity = Activity.create(activity_params)
      binding.pry
      render json: @activity
    end

    def update
    end

    def destroy
    end

    private

      def activity_params
        params.require(:activity).permit(:name, :duration, :schedule_id, :category_id, :start_time, :end_time)
      end

  end
end
