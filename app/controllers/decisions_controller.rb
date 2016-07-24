class DecisionsController < ApplicationController

  def new
  end
  
  def yes
  end
  
  def no
  end
  
  def create_yes
  end
  
  def index
    @decisions = Decision.all
  end
  
  def show
    @decision = Decision.find(params[:id])
  end
  
  def create
    @decision = Decision.new(decision_params)
    #there are 2 choices: d1, d2
    d1 = params[:decision]
    d2 = params[:decision]
    @d1 = @decision.d1
    @d2 = @decision.d2
    #route to a different view depending on the choice
    if @d2 == "no"
      render 'create_no'
    else
      render 'create_yes'
    end
  end
  
  
  private
    def decision_params
      params.require(:decision).permit(:d1, :d2)
      
    end
  
    
end
