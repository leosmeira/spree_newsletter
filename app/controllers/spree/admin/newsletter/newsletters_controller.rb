class Spree::Admin::Newsletter::NewslettersController < ApplicationController

  def create
  end

  def new
  end

  def edit
  end

  def show
    @newsletters = ::Newsletter::Newsletter.active_newsletters
  end

  def update
  end

  def destroy
    newsletter = Spree::Newsletter.find(params[:id])
    newsletter.destroy
    redirect_to admin_newsletter_dashboard_path
  end

end
