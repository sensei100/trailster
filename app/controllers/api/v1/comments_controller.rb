module Api
  module V1
    class CommentsController < ApplicationController
      skip_before_filter :verify_authenticity_token

      before_filter :authenticate_user!, only: [:create, :destroy]
      
      respond_to :json

      def index
        hike = Hike.find(params[:hike_id])
        comments = hike.comments
        respond_with hike, comments
      end

      def show
        hike = Hike.find(params[:hike_id])
        comment = hike.comments.find(params[:id])
        respond_with hike, comments
      end

      def create
        hike = Hike.find(params[:hike_id])
        comment = hike.comments.create(comment_params)
        respond_with :api, :v1, hike, comment
      end

      # def update
      #   hike = Hike.find(params[:hike_id])
      #   comment = hike.comments.find(params[:id])
      #   comment.update(comment_params)
      #   respond_with hike, comment
      # end

      def destroy
        hike = Hike.find(params[:hike_id])
        comment = hike.comments.find(params[:id])
        respond_with comment.destroy
      end

      private
        def comment_params
          params.require(:comment).permit(:content, :hike_id)
        end


    end
  end
end
