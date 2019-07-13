class Recipe < ApplicationRecord
mount_uploader :image, ImageUploader  
has_many :likes, dependent: :destroy

    def self.searchTag(searchTag)
        
        if searchTag
           recipe2 = Recipe.where(:recipe_tags => searchTag)

            if recipe2 
                self.where(id: recipe2) 
                
            end
        
            else
                Recipe.all
        end
    end
end
