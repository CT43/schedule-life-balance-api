module Api::V1
  class SchedulesController < ApplicationController

    def index
    end

    def create
    end

    def update
    end

    def destroy
    end

    private

      def idea_params
        params.require(:schedule).permit(:date, :hours)
      end

  end
end
