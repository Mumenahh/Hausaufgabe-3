class PagesController < ApplicationController
  def home
@title = "Startseite"

   @graphs = Graph.all
     @rutes = Rute.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @graphs }
      format.xml { render :xml => @rutes }
    end
    
    
  end
  
end

