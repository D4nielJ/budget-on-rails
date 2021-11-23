class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = Group.all
    @total = helpers.total_expenses_all
  end

  def new
    @group = Group.new
  end

  def create
    user = current_user
    group = user.groups.new(group_params)

    if group.save
      flash[:notice] = 'Categorie added successfully'
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
