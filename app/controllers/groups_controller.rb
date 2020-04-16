class GroupsController < ApplicationController
    before_action :authorized 
    before_action :set_group, only: [:show, :edit, :update, :destroy]
    def index 
        @groups = Group.all
        @group = Group.new
    end

    def show 
    end

    def new 
        @group = Group.new
    end

    def create 
        @group = current_user.groups.new(group_params)
        if @group.save 
            flash[:success] = "Group created successfully!"
            redirect_to groups_path
        else
            flash.now[:danger] = "Group wasn`t created"
            render :new
        end
    end

    def edit 
    end

    def update 
        if @group.update(group_params)
            flash[:success] = "Group updated successfully!"
            redirect_to groups_path
        else
            flash.now[:danger] = "Group wasn`t updated"
            render :edit
        end
    end

    def destroy 
        @group.destroy
        redirect_to groups_path
    end

    private

    def set_group 
        @group = Group.find(params[:id])
    end

    def group_params
        params.require(:group).permit(:name, :icon,:icon_cache)
    end
    
end
