class BlaguesController < ApplicationController
    def index

    end
    # l'actions show
    def show
     @blague = Blague.find
    end
end    