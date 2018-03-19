class TasksController < ApplicationController

  TASKS_LIST = [
    {id: 1, title: "Do homework", deadline: "2018-3-19"},
    {id: 2, title: "Pick up kids", deadline: "2018-3-20"},
    {id: 3, title: "Do laundary", deadline: "2018-3-21"}
  ]

  def index
    @tasks = TASKS_LIST
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
