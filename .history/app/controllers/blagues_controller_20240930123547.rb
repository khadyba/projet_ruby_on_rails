class BlaguesController < ApplicationController
    def index

    end
    # l'actions show
    def show
        # pour recupérer une 
     @blague = Blague.find(params[:id])
    end
end    