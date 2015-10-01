class Dashboard::Admin::ItemsController < Dashboard::Admin::AdminController
  before_action :set_dashboard_admin_item, only: [:show, :edit, :update, :destroy]

  # GET /dashboard/admin/items
  def index
    @dashboard_admin_items = Item.paginate(:page => params[:page])
  
  end

  # GET /dashboard/admin/items/1
  def show
  end

  # GET /dashboard/admin/items/new
  def new
    @dashboard_admin_item = Dashboard::Admin::Item.new
  end

  # GET /dashboard/admin/items/1/edit
  def edit
  end

  # POST /dashboard/admin/items
  def create
    @dashboard_admin_item = Dashboard::Admin::Item.new(dashboard_admin_item_params)

    if @dashboard_admin_item.save
      redirect_to @dashboard_admin_item, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dashboard/admin/items/1
  def update
    if @dashboard_admin_item.update(dashboard_admin_item_params)
      redirect_to @dashboard_admin_item, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dashboard/admin/items/1
  def destroy
    @dashboard_admin_item.destroy
    redirect_to dashboard_admin_items_url, notice: 'Item was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard_admin_item
      @dashboard_admin_item = Dashboard::Admin::Item.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dashboard_admin_item_params
      params[:dashboard_admin_item]
    end
end
