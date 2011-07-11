class ImplantationsController < ApplicationController
  def index
    @implantations = Implantation.all
  end

  def show
    @implantation = Implantation.find(params[:id])
  end

  def new
    @implantation = Implantation.new
  end

  def create
    @implantation = Implantation.new(params[:implantation])
    if @implantation.save
      redirect_to @implantation, :notice => "Successfully created implantation."
    else
      render :action => 'new'
    end
  end

  def edit
    @implantation = Implantation.find(params[:id])
  end

  def update
    @implantation = Implantation.find(params[:id])
    if @implantation.update_attributes(params[:implantation])
      redirect_to @implantation, :notice  => "Successfully updated implantation."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @implantation = Implantation.find(params[:id])
    @implantation.destroy
    redirect_to implantations_url, :notice => "Successfully destroyed implantation."
  end
end