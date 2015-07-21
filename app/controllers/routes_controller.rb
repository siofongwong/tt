class RoutesController < ApplicationController
  
  def index
    @routes = Route.all
  end

  def show
    @route = Route.find(params[:id])
  end

  def new

  end

  def create
    @route = Route.create(:name => params[:route][:name], 
      :places => params[:route][:routes]
    )

    @route.save
    redirect_to @route


  end

  def edit
    @route = Route.find(params[:id])
  end

  def update
    @route = Route.find(params[:id])
 
    if @route.update(route_params)
      redirect_to @route
    else
      render 'edit'
    end
  end


  def destroy
    @route = Route.find(params[:id])
    @route.destroy
    redirect_to routes_path

  end

end
