class ArticlesController < ApplicationController
    def index
        @articles = Article.all
        if params[:query].present?
          @articles = @articles.where("title LIKE ?", "%#{params[:query]}%")
          SearchAnalytics.create(query: params[:query], user_id: current_user.id) if user_signed_in?
        end
      end
      
end
