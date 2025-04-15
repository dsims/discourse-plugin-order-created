# frozen_string_literal: true

DiscoursePluginOrderCreated::Engine.routes.draw do
  get "/examples" => "examples#index"
  # define routes here
end

Discourse::Application.routes.draw { mount ::DiscoursePluginOrderCreated::Engine, at: "discourse-plugin-order-created" }
