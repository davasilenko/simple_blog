class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :require_login, except: [:index, :show]
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @comment = Comment.new
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: 'Статья успешно создана.'
    else
      render :new, alert: 'Ошибка при создании статьи.'
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Статья успешно обновлена.'
    else
      render :edit, alert: 'Ошибка при обновлении статьи.'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path, notice: 'Статья удалена.'
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def require_login
    unless current_user
      redirect_to login_path, alert: 'Необходимо войти для выполнения этого действия.'
    end
  end

  def require_admin
    unless current_user&.admin?
      redirect_to root_path, alert: 'Доступ запрещен.'
    end
  end
end
