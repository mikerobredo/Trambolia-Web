class Admin::PhoneController < Admin::AuthenticatedController
  def new
    load_data
    @phone = Phone.new
    @page_title = 'Introducir un nuevo teléfono'
  end

  def create
    @phone = Phone.new(phone_params)
    if @phone.save
      flash[:notice] = "El teléfono #{@phone.title} ha sido creado con éxito."
      redirect_to :action => 'index'
    else
      load_data
      @page_title = 'Introducir un nuevo teléfono'
      render :action => 'new'
    end
  end

  def edit
    load_data
    @phone = Phone.find(params[:id])
    @page_title = 'Editar teléfono'
  end

  def update
    @phone = Phone.find(params[:id])
    if @phone.update_attributes(phone_params)
      flash[:notice] = "El teléfono #{@phone.title} ha sido actualizado."
      redirect_to :action => 'show', :id => @phone
    else
      load_data
      @page_title = 'Editar teléfono'
      render :action => 'edit'
    end
  end

  def destroy
    @phone = Phone.find(params[:id])
    @phone.destroy
    flash[:notice] = "Ha sido borrado #{@phone.title}."
    redirect_to :action => 'index'
  end

  def show
    @phone = Phone.find(params[:id])
    @page_title = @phone.title
  end

  def index
    sort_by = params[:sort_by]
    @phones = Phone.order(sort_by).paginate(:page => params[:page], :per_page => 5)
    @page_title = 'Listado de teléfonos'
  end

  private

    def load_data
      @suppliers = Supplier.all
      @manufacturers = Manufacturer.all
    end

    def phone_params
      params.require(:phone).permit(:title, :manufacturer_id, :manufactured_at, { :supplier_ids => [] },
                                   :imei, :price, :blurb, :cover_image)
    end
end
