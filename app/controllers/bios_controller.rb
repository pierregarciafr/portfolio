class BiosController < ApplicationController

  def new
    @bio = Bio.new
  end

  def create
    @bio = Bio.new(bio_params)
    if @bio.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @bio = Bio.find(params[:id])
  end

  def update
    @bio = Bio.find(params[:id])
    if @bio.update(bio_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
  end

  private

  def bio_params
    params.require(:bio).permit(:title, :content, :icon) #, :iconCloud
  end

end
