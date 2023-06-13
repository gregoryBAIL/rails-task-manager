class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    @task.save # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to tasks_path
  end
  def show
    @task = Task.find(params[:id])
  end


  def new
    @task = Task.new
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path


  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])


  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end


end
