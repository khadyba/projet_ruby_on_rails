# les validations du formulaire d'ajout de nouvelle blagues

class Blague < ApplicationRecord
    validates ${:nom} presence :true
    validates ${:contenue} presence:
    validates ${:auteur}


end
