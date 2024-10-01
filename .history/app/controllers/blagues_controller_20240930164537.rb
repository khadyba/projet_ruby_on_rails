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

    # la methode pour aller au nivaux du formulair pour ajouter une blague
    def new
      @blague = Blague.new
    end

    # la methode pour executer le formulaire d'ajout 
    def create
      @blague =  Blague.new(blagues_params)
      
      if  @blague.save 
        redirect_to @blague, notice: "La blague a été publiée avec succès."
        
      else
        render :new
        
      end
        

    end

    # creation d'une metode priver 
    private
    def blagues_params
     params.require(:blague).permit(:nom, :contenue, :auteur)
    end
    # methode pour afficher la vue 
     def edit
      @blague = 
     end

     def update
      @blague = Blague.find(params[:id])
         if @blague.update_attributes(params[:blague])
           flash[:success] = "Object was successfully updated"
           redirect_to @blague
         else
           flash[:error] = "Something went wrong"
           render 'edit'
         end
     end
     
     
end    