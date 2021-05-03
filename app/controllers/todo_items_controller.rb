class TodoItemsController < ApplicationController
  before_action :set_todo_list

  def index
  end

  def new
  end

  def edit
  end

  private

    def set_todo_list
      @todo_list = TodoList.find(params[:todo_list_id])
    end

    def todo_item_params
      params.require(:todo_item).permit(:content)
    end
end
