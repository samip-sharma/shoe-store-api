class ShoesController < ApplicationController

    def create
        
        shoe=Shoe.create(shoe_params)
        byebug
    end

    def index
        render json: Shoe.all
    end


    private 

    def shoe_params
        params.require(:shoe).permit(:name, :brand, :price, :latest, :image)
    end

end
