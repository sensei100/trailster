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
        @group = Group.new(group_params)
        if @group.save
          respond_to do |format|
            format.json { render :json => @group }
          end
        end
      end

      def update
        @group = Group.find(params[:id])
        user = User.find(params[:users].last[:id])
        if !@group.users.include?(user)
          @group.users << user
          @group.update(group_params)
          respond_to do |format|
            format.json { render :json => @group }
          end
        end
        @group.update(group_params)
        respond_to do |format|
          format.json { render :json => @group }
        end
      end

      def destroy
        respond_with Group.destroy(params[:id])
      end


      private
        def group_params
          params.require(:group).permit(:name, :description, :user_id, :owner)
        end

    end
  end
end
