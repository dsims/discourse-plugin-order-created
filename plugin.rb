# frozen_string_literal: true

# name: discourse-plugin-order-created
# about: TODO
# meta_topic_id: TODO
# version: 0.0.1
# authors: Discourse
# url: TODO
# required_version: 2.7.0

enabled_site_setting :discourse_plugin_order_created_enabled

module ::DiscoursePluginOrderCreated
  PLUGIN_NAME = "discourse-plugin-order-created"
end

require_relative "lib/discourse_plugin_order_created/engine"

after_initialize do
  # Code which should run after Rails has finished booting
end
