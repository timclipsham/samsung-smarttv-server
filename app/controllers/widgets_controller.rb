class WidgetsController < ApplicationController
  before_action :set_widget, only: [:show, :edit, :update, :destroy]

  def index
    @widgets = Widget.all
  end

  def show
  end

  def new
    @widget = Widget.new
  end

  def edit
  end

  def create
    @widget = Widget.new(widget_params)

    if @widget.save
      redirect_to @widget, notice: 'Widget was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @widget.update(widget_params)
      redirect_to @widget, notice: 'Widget was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @widget.destroy
    redirect_to widgets_url
  end

  private
    def set_widget
      @widget = Widget.find(params[:id])
    end

    def widget_params
      params.require(:widget).permit(:identifier, :title, :description, :package)
    end
end
