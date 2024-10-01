class BlaguesController < ApplicationController
    # methode pour récupérer tout les bla
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