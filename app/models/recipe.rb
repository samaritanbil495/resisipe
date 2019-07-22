class Recipe < ApplicationRecord
mount_uploader :image, ImageUploader
has_many :likes, dependent: :destroy
belongs_to :user, foreign_key: 'recipe_id'


scope :recent, ->{where('created_at <= :a', a: Time.now - 2.minutes)}    
   
    
    #scope :recent, ->{joins(:user).where('recipes.created_at + "remainingTime" = :a', a:Time.now)}
    #scope :recent, ->{joins(:user).where('created_at <= :a', a: Time.now - remainingTime.Minutes)}    


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
