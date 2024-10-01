class BlaguesController < ApplicationController
    def index

    end
    # l'actions show
    def show
        # pour recupérer le detail d'une ressources au niveau de la base de donné
     @blague = Blague.find(params[:id])

    end
end    