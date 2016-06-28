class Decision1sController < ApplicationController
  
   def new
   end
   
   def index
    @decision1s = Decision.all
   end
  
  def show
    @decision1 = Decision1.find(params[:id])
  end
  
  def create
    @decision1 = Decision1.new(decision1_params)
    #there are 2 choices: d5,d6
    d5 = params[:decision1]
    d6 = params[:decision1]
    @d5 = @decision1.d5
    @d6 = @decision1.d6
    #route to a different view depending on the choice
    if @d6 == "no"
      render 'create_no'
    else
      render 'create_yes'
    end
  end
  
  
  private
    def decision1_params
      params.require(:decision1).permit(:d5, :d6)
      
    end
end
