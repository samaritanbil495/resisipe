class RecipeWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable
 
  recurrence { minutely }
      
  def perform
    Recipe.recent.destroy_all
  end
end
