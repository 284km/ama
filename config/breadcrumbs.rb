crumb :root do
  link "Home", root_path
end

crumb :resources do |klass_or_model|
  link klass_or_model.model_name.human, klass_or_model
end

crumb :new_resource do |model|
  link t("shared.new"), model
  parent :resources, model
end

crumb :resource do |model|
  link model.to_key.join, model
  parent :resources, model.class
end

crumb :edit_resource do |model|
  link t("shared.edit"), [:edit, model]
  parent :resource, model
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
