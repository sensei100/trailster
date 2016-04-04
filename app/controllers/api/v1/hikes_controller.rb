module Api
  module V1
    class HikesController < ApplicationController
      skip_before_filter :verify_authenticity_token

      before_filter :authenticate_user!, only: [:create, :update, :destroy]

      respond_to :json

      def index
        respond_with(Hike.all.order("id DESC"))
      end

      def show
        respond_with(Hike.find(params[:id]))
      end

      def create
        @hike = Hike.new(hike_params)
        if @hike.save
          respond_to do |format|
            format.json { render :json => @hike }
          end
        end
      end

      def update
        @hike = Hike.find(params[:id])
        if @hike.update(hike_params)
          respond_to do |format|
            format.json { render :json => @hike }
          end
        end
      end

      def destroy
        respond_with Hike.destroy(params[:id])
      end

      def like
        @hike = Hike.find(params[:id])
        @hike.increment!(:likes)
      end

      def dislike
        @hike = Hike.find(params[:id])
        @hike.incrment!(:dislikes)
      end

      private
        def hike_params
          params.require(:hike).permit(:name, :description, :street_address, :city, :state, :difficulty, :distance, :likes, :dislikes)
        end

    end
  end
end
