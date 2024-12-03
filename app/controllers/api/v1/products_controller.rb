class Api::V1::ProductsController < ApplicationController
  before_action :check_database_connection, only: [:show]

  def index
    products = Product.all
    render json: {products: products}
  end 

  def edit
    begin 
      product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound => exc
      render json: {error: "Record not found #{exc.inspect}"}
    else
      # Else only Run When begin block don't have any error.
      render json: {product: product}
    end
  end

  def show
    begin
      product = Product.find(params[:id])
      render json: {product: product, sucess: "Record found"}
    rescue ActiveRecord::RecordNotFound => exc
      render json: {error: "Record not found #{exc.inspect}"}
    end 
  end 

  def check_database_connection
    ActiveRecord::Base.connection.execute("SELECT 1")
      rescue ActiveRecord::ConnectionNotEstablished => e
        Rails.logger.error("Database connection error: #{e.message}")
        render json: { error: "Could not connect to the database" }, status: :internal_server_error
  end

end
