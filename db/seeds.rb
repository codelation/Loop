# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Client.create({
  name: "Josh",
  company_name: "Codelation",
  email_address: "fake@codelation.com"
})

Project.create({
  name: "Loop",
  description: "A delightful app for closing that loop!"
})

Deliverable.create([
  { name: "List, Add, and Edit Client",
    description: "User needs to be able to list all clients, as well as add new and edit existing clients",
    project_id: 1 },
  { name: "Drag and Drop Sorting",
    description: "An interface for sorting issues to change the priority of the issues in a project",
    project_id: 1 },
  { name: "Autocomplete",
    description: "easily jump to any client, project, or issue by using an autocomplete search field for each model",
    project_id: 1 },
  { name: "Authentication",
    description: "Require the email address and password from an admin user to manage clients, projects, etc",
    project_id: 1 }
])

Issue.create([
  { title: "Create Client Index View/controllers",
    body: "Create index controller, create index view, add client to routes",
    budgeted_time: 30,
    priority: 10,
    deliverable_id: 1 },
  { title: "Create Client Show View/controllers",
    body: "Create show controller, create show view",
    budgeted_time: 30,
    priority: 10,
    deliverable_id: 1 },
  { title: "Create Client Add View/controllers",
    body: "Create add controller, create add view",
    budgeted_time: 60,
    priority: 10,
    deliverable_id: 1 },
  { title: "Create Client Edit View/controllers",
    body: "Create edit controller, create edit view",
    budgeted_time: 60,
    priority: 10,
    deliverable_id: 1 }
])
