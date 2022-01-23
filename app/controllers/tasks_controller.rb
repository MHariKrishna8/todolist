class TasksController < ApplicationController
  layout false, only: [:new]

  def index
    respond_to do |format|
      format.html do
        @tasks = Task.all
        render :index
      end
    end
  end

  def new
  end

  def create
  end

  def update
  end
  
  def destroy
    Task.find_by(id: params[:id]).destroy
    redirect_to root_path
  end

  def show
  end
end
