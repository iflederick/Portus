class Admin::NamespacesController < Admin::BaseController
  def index
    @special_namespaces = Namespace.where(global: true)
    @namespaces = Namespace.where(global: false).page(params[:page])
  end
end
