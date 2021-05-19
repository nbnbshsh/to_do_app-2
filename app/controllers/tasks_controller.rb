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
    redirect_to root_path
  end

  private

  def task_params
    params.permit(:task)
  end

  def details_params
    params.permit(:memo).merge(task_id: params[:id])
  end

end
