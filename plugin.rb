# frozen_string_literal: true

# name: discourse-cfc-routes
# about: Registers server-side routes for CFC custom pages
# meta_topic_id: 0
# version: 0.2.0
# authors: CFC Team
# url: https://github.com/XtraSweet/discourse-cfc-routes

after_initialize do
  load File.expand_path("../app/controllers/targets_controller.rb", __FILE__)
  load File.expand_path("../app/controllers/meals_controller.rb", __FILE__)
  load File.expand_path("../app/controllers/ingredients_controller.rb", __FILE__)

  Discourse::Application.routes.append do
    get "targets" => "targets#index"
    get "targets/*path" => "targets#index"

    get "meals" => "meals#index"
    get "meals/*path" => "meals#index"

    get "ingredients" => "ingredients#index"
    get "ingredients/*path" => "ingredients#index"
  end
end
