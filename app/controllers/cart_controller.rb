class CartController < ApplicationController
    before_filter :initialize_cart

    def add
      @phone = Phone.find params[:id]
      @page_title = 'Añadir item'
      respond_to do |format|
        format.js { @item = @cart.add params[:id]
                    flash.now[:cart_notice] = "Añadido <em>#{@item.phone.title}</em>."
                    render :controller => 'cart', :action => 'add_with_ajax' }
        format.html { if request.post?
                        @item = @cart.add params[:id]
                        flash.now[:cart_notice] = "Añadido <em>#{@item.phone.title}</em>."
                        redirect_to :controller => 'catalog'
                      else
                        render :controller => 'cart', :action => 'add', :template => 'cart/add'
                      end }
      end                
    end

    def remove
      @phone = Phone.find params[:id]
      @page_title = 'Quitar item'
      respond_to do |format|
        format.js { @item = @cart.remove params[:id]
                    flash.now[:cart_notice] = "Eliminado <em>#{@item.phone.title}</em>."
                    render :controller => 'cart', :action => 'remove_with_ajax' }
        format.html { if request.post?
          @item = @cart.remove params[:id]
          flash.now[:cart_notice] = "Eliminado 1<em>#{@item.phone.title}</em>."
          redirect_to :controller => 'catalog'
        else
          render :controller => 'cart', :action => 'remove'
        end }
      end
    end

    def clear
      @page_title = 'Carrito vacío'
      respond_to do |format|
        format.js { @cart.cart_items.destroy_all
                    flash.now[:cart_notice] = "Carrito vaciado."
                    render :controller => 'cart', :action => 'clear_with_ajax' }
        format.html { if request.post?
          @cart.cart_items.destroy_all
          flash[:cart_notice] = "Carrito vacío."
          redirect_to :controller => 'catalog'
        else
          render :controller => 'cart', :action => 'clear'
        end  }
      end
    end
  end  
