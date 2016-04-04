module Api
  module V1
    class GroupsController < ApplicationController
      skip_before_filter :verify_authenticity_token

      before_filter :authenticate_user!, only: [:create, :update, :destroy]

      respond_to :json

      def index
        respond_with(Group.all.order("id DESC"))
      end

      def show
        respond_with(Group.find(params[:id]))
      end

      def create
        @group = Group.new
        if @group.save
          respond_to do |format|
            format.json { render :json => @group }
          end
        end
      end

      def update
        @group = Group.find(params[:id])
        if @group.update(group_params)
          respond_to do |format|
            format.json { render :json => @group }
          end
        end
      end

      def destroy
        respond_with Group.destroy(params[:id])
      end


      private
        def group_params
          params.require(:group).permit(:name, :description)
        end

    end
  end
end
