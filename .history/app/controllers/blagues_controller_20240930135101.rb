class BlaguesController < ApplicationController
    # methode pour récupérer tout les blague dans la base de données 
    # en verifian si le tableau n'es pas vide d'abord
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