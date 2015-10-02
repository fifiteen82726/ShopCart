class Dashboard::Admin::ItemsController < Dashboard::Admin::AdminController 
  before_action :set_dashboard_admin_item, only: [:show, :edit, :update, :destroy]

  # GET /dashboard/admin/items
  def index
    # id DESC 是說id 會從後面排回來,後台通常這樣,新產生的在前面
    @Items = @paginate = ::Item.order('id DESC').includes(:cate).paginate(:page => params[:page])
  end
  

  # GET /dashboard/admin/items/1
  def show
  end

  # GET /dashboard/admin/items/new
  def new
    #@dashboard_admin_item = Dashboard::Admin::Item.new
    @Items = ::Item.new(item_params)
  end

  # GET /dashboard/admin/items/1/edit
  def edit
    @item = ::Item.find(params[:id])
  end

  # POST /dashboard/admin/items
  def create
    @Items = ::Item.new(item_params)

    if @Items.save
      redirect_to @Items, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dashboard/admin/items/1
  def update
    @item = ::Item.find(params[:id])
    @item.update(item_params)
    redirect_to dashboard_admin_items_path
    
  end

  # DELETE /dashboard/admin/items/1
  def destroy
    @item.destroy
    redirect_to dashboard_admin_items_url, notice: 'Item was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard_admin_item
      @item = ::Item.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit!
    end
end
