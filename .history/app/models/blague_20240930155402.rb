# les validations du formulaire d'ajout de nouvelle blagues

class Blague < ApplicationRecord
    validates ${:nom, contenue} presence :true
    validates ${:contenue} presence :true
    validates ${:auteur}


end
