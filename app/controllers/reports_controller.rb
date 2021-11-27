class ReportsController < ApplicationController
  before_action :authenticate_user!

  def new
    @navbar = true
    @title = 'Report'
    @previous_path = group_path(params[:group_id])
    @group = Group.find(params[:group_id])
    @report = Report.new
  end

  def create
    group = Group.find(params[:group_id])

    if params[:groups].nil?
      flash[:alert] = 'Please select categories before submitting a new report'
      return redirect_to group_path(group)
    end

    report = current_user.reports.create(report_params)

    params[:groups].each do |g|
      report.groups << Group.find(g)
    end

    if report.save
      flash[:notice] = 'Category added successfully'
      redirect_to group_path(group)
    else
      flash[:error] = report.errors.messages
      redirect_to new_report_path(group_id: group)
    end
  end

  private

  def report_params
    params.require(:report).permit(:name, :amount)
  end
end
