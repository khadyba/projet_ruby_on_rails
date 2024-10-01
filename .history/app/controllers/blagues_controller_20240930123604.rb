class BlaguesController < ApplicationController
    def index

    end
    # l'actions show
    def show
        # pour recupérer le detail d'une ressources
     @blague = Blague.find(params[:id])
     
    end
end    