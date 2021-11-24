class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @navbar = true
    @title = 'Categories'
    @groups = current_user.groups
    @total = helpers.total_expenses_all(current_user)
  end

  def show
    @group = Group.find(params[:id])
    @navbar = true
    @title = @group.name
    @previous_path = groups_path
    @reports = @group.reports.order(created_at: :desc)
  end

  def new
    @navbar = true
    @title = 'Categories'
    @previous_path = groups_path
    @group = Group.new
  end

  def create
    user = current_user
    group = user.groups.new(group_params)

    if group.save
      flash[:notice] = 'Category added successfully'
      redirect_to groups_path
    else
      flash[:error] = group.errors.messages
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
