class BlaguesController < ApplicationController
    def index
        @blagues = Blague.all || []
      end
      
    # l'actions show
    def show
     # pour recupérer le detail d'une 
     # ressources au niveau de la base de donnéés
     @blague = Blague.find(params[:id])

    end
end    