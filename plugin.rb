# frozen_string_literal: true

# name: discourse-plugin-order-created
# about: Makes created_at the default sort order for topics
# version: 0.0.1
# authors: dsims
# url: https://github.com/dsims/discourse-plugin-order-created
# required_version: 2.7.0

enabled_site_setting :discourse_plugin_order_created_enabled

after_initialize do
  register_modifier(
    :topic_query_apply_ordering_result,
  ) do |result, sort_column, sort_dir, options, topic_query|
    if sort_column.blank? || sort_column == "default"
      sort_column = "created_at"
      result.order("topics.#{sort_column} #{sort_dir}")
    end
  end
end
