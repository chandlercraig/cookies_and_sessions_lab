class ProductsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
    end

    def add
        cart << params[:product]
        redirect_to root_path
    end
end