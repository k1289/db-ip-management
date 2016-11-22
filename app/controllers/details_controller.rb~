class DetailsController < ApplicationController
def index
   @details = Detail.all
 end

def show
    @detail = Detail.find(params[:id])
  end
 def new
      @detail = Detail.new
   end
   
   def create
      @detail = Detail.new(detail_params)      
      if @detail.save
         redirect_to @detail, notice: "The member #{@detail.name} has been added."
      else
         render 'new'
      end
      
   end
 

def edit
    @detail = Detail.new(detail_params)
  end
   def update
  @detail = Detail.find(params[:id])
 
  if @detail.update(detail_params)
    redirect_to @detail
  else
    render 'edit'
  end
end

   def destroy
      @detail = Detail.find(params[:id])
      @detail.destroy
      redirect_to detail_path, notice:  "The member #{@detail.name} has been removed."
   end
   
   private
      def detail_params
      params.require(:detail).permit(:name, :password)
   end
end

