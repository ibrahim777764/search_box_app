class SearchAnalyticsController < ApplicationController
  def index
    if current_user
      @search_analytics = SearchAnalytics.where(user_id: current_user.id)
      
      # Debugging code
      if @search_analytics.empty?
        puts "No search analytics found for user with id #{current_user.id}."
      else
        puts "Found #{search_analytics.size} search analytics for user with id #{current_user.id}."
        @search_analytics.each do |search_analytic|
          puts "Query: #{search_analytic.query}"
        end
      end
    else
      # handle the case where there is no logged-in user
    end
  end
end
