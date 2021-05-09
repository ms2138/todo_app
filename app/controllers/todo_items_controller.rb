class TodoItemsController < ApplicationController
  before_action :set_todo_list

  def index
  end

  def new
    @todo_item = @todo_list.todo_items.new
  end

  def create
    respond_to do |format|
      @todo_item = @todo_list.todo_items.new(todo_item_params)
      if @todo_item.save
        format.html { redirect_to todo_list_todo_items_path, flash: { success: "Added todo item." } }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def url_options
    { todo_list_id: params[:todo_list_id] }.merge(super)
  end

  private

    def set_todo_list
      @todo_list = TodoList.find(params[:todo_list_id])
    end

    def todo_item_params
      params.require(:todo_item).permit(:content)
    end
end
