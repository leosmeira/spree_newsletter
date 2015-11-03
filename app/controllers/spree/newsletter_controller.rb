module Spree
  class NewsletterController < Spree::StoreController
    
    def store
      newsletter = ::Newsletter::Newsletter.create(email: params[:email])

      respond_to do |format|
        
        format.html do
          if newsletter.new_record?
            flash[:error] = "Erro na tentativa de cadastro!"
            redirect_to root_path
          else
            flash[:notice] = "#{newsletter.email} - cadastrado!"
            redirect_to root_path
          end
        end

        format.json do 
          render json: {
            :object => newsletter,
            :success => !newsletter.new_record?
          }
        end

      end
    end

    private

    def newsletter_params
      params.permit(:email)
    end

  end
end
