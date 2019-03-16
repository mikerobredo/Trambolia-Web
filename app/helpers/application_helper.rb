module ApplicationHelper
    def add_book_link(text, phone)
        link_to_remote text, {:url => {:controller => "cart",
            :action => "add", :id => phone}},
            {:title => "Add to Cart",
             :href => url_for( :controller => "cart",
                :action => "add", :id => phone)}
    end
    
    def remove_book_link(text, phone)
     link_to_remote text, {:url => {:controller => "cart",
            :action => "remove",
            :id => phone}},
            {:title => "Eliminar teléfono",
            :href => url_for( :controller => "cart",
                 :action => "remove", :id => phone)}
    end
    
    def clear_cart_link(text = "Vaciar carrito")
        link_to_remote text,
            {:url => { :controller => "cart",
                :action => "clear" }},
            {:href => url_for(:controller => "cart",
                :action => "clear")}
    end
end