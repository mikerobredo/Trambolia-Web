{"filter":false,"title":"application_controller.rb","tooltip":"/app/controllers/application_controller.rb","undoManager":{"mark":8,"position":8,"stack":[[{"start":{"row":0,"column":0},"end":{"row":59,"column":0},"action":"insert","lines":["class ApplicationController < ActionController::Base","  # Prevent CSRF attacks by raising an exception.","  # For APIs, you may want to use :null_session instead.","  protect_from_forgery with: :exception","","  helper_method :current_user_session, :current_user","","  private","","  def initialize_cart","    if session[:cart_id]","      @cart = Cart.find session[:cart_id]","    else","      @cart = Cart.create","      session[:cart_id] = @cart.id","    end","  end","","  def current_user_session","    logger.debug \"ApplicationController::current_user_session\"","    return @current_user_session if defined?(@current_user_session)","    @current_user_session = UserSession.find","  end","","  def current_user","    logger.debug \"ApplicationController::current_user\"","    return @current_user if defined?(@current_user)","    @current_user = current_user_session && current_user_session.user","  end","","  def require_user","    logger.debug \"ApplicationController::require_user\"","    unless current_user","      store_location","      flash[:notice] = \"You must be logged in to access this page.\"","      redirect_to :controller => '/user_sessions', :action => 'new'","      return false","    end","  end","","  def require_no_user","    logger.debug \"ApplicationController::require_no_user\"","    if current_user","      store_location","      flash[:notice] = \"You must be logged out to access this page.\"","      redirect_to :controller => 'about', :action => :index","      return false","    end","  end","","  def store_location","    session[:return_to] = request.url","  end","","  def redirect_back_or_default(default)","    redirect_to(session[:return_to] || default)","    session[:return_to] = nil","  end","end",""],"id":1}],[{"start":{"row":34,"column":24},"end":{"row":34,"column":66},"action":"remove","lines":["You must be logged in to access this page."],"id":2},{"start":{"row":34,"column":24},"end":{"row":34,"column":72},"action":"insert","lines":["Debes iniciar sesión para acceder a esta página."]}],[{"start":{"row":44,"column":24},"end":{"row":44,"column":67},"action":"remove","lines":["You must be logged out to access this page."],"id":3},{"start":{"row":44,"column":24},"end":{"row":44,"column":72},"action":"insert","lines":["Debes iniciar sesión para acceder a esta página."]}],[{"start":{"row":44,"column":30},"end":{"row":44,"column":37},"action":"remove","lines":["iniciar"],"id":4},{"start":{"row":44,"column":30},"end":{"row":44,"column":31},"action":"insert","lines":["c"]}],[{"start":{"row":44,"column":31},"end":{"row":44,"column":32},"action":"insert","lines":["e"],"id":5}],[{"start":{"row":44,"column":32},"end":{"row":44,"column":33},"action":"insert","lines":["r"],"id":6}],[{"start":{"row":44,"column":33},"end":{"row":44,"column":34},"action":"insert","lines":["r"],"id":7}],[{"start":{"row":44,"column":34},"end":{"row":44,"column":35},"action":"insert","lines":["a"],"id":8}],[{"start":{"row":44,"column":35},"end":{"row":44,"column":36},"action":"insert","lines":["r"],"id":9}]]},"ace":{"folds":[],"scrolltop":240,"scrollleft":0,"selection":{"start":{"row":0,"column":0},"end":{"row":59,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1495314354983,"hash":"090112fd3b6d04516df23139d012c840dd70fc78"}