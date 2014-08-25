RailsAdmin.config do |config|
  # class RailsAdmin::Config::Fields::Types::Inet < RailsAdmin::Config::Fields::Base
  #   RailsAdmin::Config::Fields::Types::register(self)
  # end

  ### Popular gems integration

  # == Devise ==
  # config.authenticate_with do
    # warden.authenticate! scope: :user
  # end
  config.authorize_with :cancan
  config.current_user_method(&:current_user)

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    import

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'User' do
    edit do
      field :email
      field :password
      field :dealership
      field :admin
      
      # exclude_fields :last_sign_in_ip, :current_sign_in_ip
    end
  end
end
