class MagazinesController < ApplicationController
  def index
  	@magazines = Magazine.all
  end
  def new 
  	@magazine = Magazine.new
  end
  def edit 
  	@magazine = Magazine.find(params[:id])
  end
  def show
  @magazine = Magazine.find(params[:id])	
end
 def create
 	@magazine = Magazine.new(magazine_params)
 	if @magazine.save
 		redirect_to @magazine
 	else
 		render "new"
 	end
 end
 def update
 @magazine = Magazine.find(params[:id])
 if @magazine.update_attributes(magazine_params)
 	redirect_to @magazine
 else 
 	render "edit"
 end
end
def destroy
	@magazine = Magazine.find(params[:id])
	@magazine.destroy
	redirect_to magazines_path
end	

 private 
 def magazine_params
 	params.require(:magazine).permit(:name)
 end 	
end
