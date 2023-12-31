class TasksController < ApplicationController
  before_action :set_task, only: %i[show update destroy]

  # GET /tasks
  def index
    @tasks = Task.all

    render json: @tasks
  end

  # GET /tasks/1
  def show
    render json: @task
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors.full_messages, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors.full_messages, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy!
  end

  # GET /tasks/completed
  def completed
    tasks = Task.where(completed: true)
    render json: tasks, status: :ok
  end

  # GET /tasks/incomplete
  def incomplete
    tasks = Task.where(completed: false)
    render json: tasks, status: :ok
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = Task.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def task_params
    params.require(:task).permit(:title, :description, :completed)
  end
end
