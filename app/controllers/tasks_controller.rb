class TasksController < ApplicationController
  before_action :login_required
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @tasks = current_user.tasks
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    @task.save

    respond_with @task, location: tasks_path
  end

  def update
    @task.update(task_params)
    respond_with @task, location: tasks_path
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url }
    end
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:name, :user_id, :due_at)
    end
end
