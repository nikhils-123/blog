ActiveAdmin.register TermsAndCondition do

  #actions :all, except: [:new]

  #config.remove_action_item(:new) 

controller do
  def action_methods
    if TermsAndCondition.last.present?
      super - ['new']
    else
      super
    end
  end
end

form do |f|
    f.inputs 'TermsAndCondition' do
      f.input :title
      f.input :body, as: :quill_editor
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :body
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end


  
end
