class TasksController < ApplicationController

  def index
    @tasks = Task.all.order("created_at DESC")
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new
    @task.title = params[:task][:title]
    @task.description = params[:task][:description]
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    @task = Task.find_by(id: params[:id])

    if @task
      @task.title = params[:task][:title]
      @task.description = params[:task][:description]

      if @task.save
        redirect_to task_path
      else
        render :edit
      end
    end
  end

  def complete
    @task = Task.find_by(id: params[:id])

    if @task
      @task.update(is_complete: !@task.is_complete)

      if @task.is_complete
        @task.completion_date = Time.now
      else
        @task.completion_date = nil
      end
      @task.save
    end

    redirect_back(fallback_location: root_path)
  end

  def destroy
    @task = Task.find_by(id: params[:id])

    if @task
      @task.destroy
    end
    redirect_to tasks_path
  end

end
