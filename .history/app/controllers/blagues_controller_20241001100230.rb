class BlaguesController < ApplicationController
  # Méthode pour récupérer toutes les blagues dans la base de données
  def index
    @blagues = Blague.all
  end

  # Action pour afficher une seule blague
  def show
    @blague = Blague.find(params[:id])
  end

  # Méthode pour aller au formulaire d'ajout d'une nouvelle blague
  def new
    @blague = Blague.new
  end

  # Méthode pour créer une nouvelle blague
  def create
    @blague = Blague.new(blague_params)
    
    if @blague.save
      redirect_to blagues_path, notice: "La blague a été publiée avec succès."
    else
      render :new
    end
  end

  # Méthode pour afficher le formulaire d'édition d'une blague
  def edit
    @blague = Blague.find(params[:id])
  end

  # Méthode pour mettre à jour une blague
  def update
    @blague = Blague.find(params[:id])
    
    if @blague.update(blague_params)
      redirect_to blagues_path, notice: "La blague a été mise à jour avec succès."
    else
      render :edit
    end
  end

  # Méthodes privées
  private

  def blague_params
    params.require(:blague).permit(:nom, :contenue, :auteur)
  end
  # methode pour supprimer une blague
  def delete
   @blague = Blague.find(params)
  end 

end
