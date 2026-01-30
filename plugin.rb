# frozen_string_literal: true

# name: discourse-cfc-routes
# about: Registers server-side routes for CFC custom pages
# meta_topic_id: 0
# version: 0.1.0
# authors: CFC Team
# url: https://github.com/XtraSweet/discourse-cfc-routes

after_initialize do
  Discourse::Application.routes.append do
    # /targets - User targets/goals page
    get "targets" => "static#show", defaults: { id: "targets" }
    get "targets/*path" => "static#show", defaults: { id: "targets" }

    # /meals - Meal planning and tracking
    get "meals" => "static#show", defaults: { id: "meals" }
    get "meals/*path" => "static#show", defaults: { id: "meals" }

    # /ingredients - Ingredients database/browser
    get "ingredients" => "static#show", defaults: { id: "ingredients" }
    get "ingredients/*path" => "static#show", defaults: { id: "ingredients" }
  end
end
