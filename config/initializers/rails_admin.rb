RailsAdmin.config do |config|
  
  config.main_app_name = ["Grupo Espírita Lares Unidos", "CRECHE"]

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
  warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  
  config.model Crianca do
    navigation_icon 'fa fa-child'
  end
  
  config.model User do
    navigation_icon 'fa fa-users'
  end
  
  config.model Turma do
    navigation_icon 'fa fa-book'
  end
 
  config.model User do
    navigation_label 'Administração Site'
  end

  config.model Crianca do
    weight -1
  end
  
  config.model Turma do
    weight 0
  end
  
  config.model Calcado do
    weight 1
  end

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

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
