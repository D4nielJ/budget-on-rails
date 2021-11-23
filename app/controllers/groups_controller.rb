class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = Group.all
    @total = helpers.total_expenses_all
  end

  def new; end

  def create; end
end
