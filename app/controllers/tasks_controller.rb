class TasksController < ApplicationController
  def index
    @tasks=Task.all.order(created_at: :desc)
  end

  def new
  end

  def create
    @task=Task.new(task_params)
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @task=Task.find(params[:id])
    @task.destroy
    render :index
  end

  private

  def task_params
    params.permit(:task)
  end

end
