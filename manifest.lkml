# STRUCTURAL PARAMETERS
#project_name: "body_fit_looker_viz" #Specifies the name of the current project.
#new_lookml_runtime: no #Enables or disables New LookML Runtime for a LookML project

#Specifies that this project depends on another project.
#local_dependency: {
#project: "project_name"
 # override_constant: constant_name {
 #   value: "string value"
 # }
#}

#Specifies one or more remote projects that contain files that you want to include.
#remote_dependency: remote_project_name {
#  url: "remote_project_url"
 # ref: "remote_project_ref"
 # override_constant: constant_name {
 #   value: "string value"
 # }
#}

#Defines a LookML constant that can be used throughout your project
#constant: constant_name {
 # value: "string value"
 # export: none | override_optional | override_required
#}


# LOCALIZATION PARAMETERS
#Specifies the localization information for your model. Specifies the locale that will be used as your model’s default for translating strings.
#localization_settings: {
 # localization_level: strict | permissive
 # default_locale: locale_name
#}

# EXTENSION FRAMEWORK PARAMETERS
#application: application_name {
 # label: "Application Label"
 # url: "application_url"
  #file: "application_file_path"
  #entitlements: {
    # Desired entitlements (described on application page)
  #}
#}

# CUSTOM VISUALIZATION PARAMETERS
#Provides the URL to the visualization’s JavaScript file.
#visualization:{
 # id: "unique-id"
 # label: "Visualization Label"
 # url: "visualization_url"
 # sri_hash: "SRI hash"
 # dependencies: ["dependency_url_1","dependency_url_2"]
 # file: "visualization_file_path"
#}
