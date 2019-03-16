class CatalogController < ApplicationController
  before_filter :initialize_cart, :except => :show
  #before_filter :require_no_user
  
  def index
    @phones = Phone.order("phones.id desc").includes(:suppliers, :manufacturer).paginate(:page => params[:page], :per_page => 5)
    @page_title = 'Nuestro catálogo'
  end

  def show
     @phone = Phone.find(params[:id])
     @page_title = @phone.title
  end

  def latest
    @phones = Phone.latest 5 # invoques "latest" method to get the five latest phones
    @page_title = 'Últimos teléfonos'
  end
end
