class ToodoosController < ApplicationController
  def index
    @toodoos = Toodoo.all
    @toodoo = Toodoo.new
  end
  
  def new
    @toodoo = Toodoo.new
  end

  def show
    @toodoo = Toodoo.find(params[:id])
  end

  def create
    Toodoo.create(toodoo_parameter)
    redirect_to toodoos_path
  end

  def destroy
    @toodoo = Toodoo.find(params[:id])
    @toodoo.destroy
    redirect_to toodoos_path, notice:"削除しました"
  end

  def edit
    @toodoo = Toodoo.find(params[:id])
  end

  def update
    @toodoo = Toodoo.find(params[:id])
    if @toodoo.update(toodoo_parameter)
      redirect_to toodoos_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def toodoo_parameter
    params.require(:toodoo).permit(:title, :content, :start_time)
  end
end
