class GroupsController < ApplicationController
  def new
  end

  def create
    @group = Group.new(params[:group])

  @group.save
  redirect_to @group
  end
end
