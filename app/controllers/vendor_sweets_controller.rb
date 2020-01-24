class VendorSweetsController < ApplicationController

    def new
    @vendorsweet =VendorSweet.new
    @sweets =Sweet.all
    @vendors =Vendor.all
    end
    
    def index
    @vendorsweet =Vendorsweet.find(params[:id])
    end

    def create
    @vendorsweet =VendorSweet.create(vendorsweet_params)
        if @vendorsweet.valid?
        redirect_to vendor_path(@vendorsweet.vendor_id)
        else
        flash[:errors] = @vendorsweet.errors.full_messages
        redirect_to new_vendor_sweet_path
        end
    end

    private

    def vendorsweet_params
        params.require(:vendor_sweet).permit(:sweet_id, :vendor_id, :price)
    end
end
