RailsAdminImport.config do |config| 
  config.model Vehicle do
    excluded_fields do
      [:id]
    end
    # label :name
    # extra_fields do
      # [:field3, :field4, :field5]
    # end
  end
end
