json.array!(@widgets) do |widget|
  json.extract! widget, :identifier, :title, :description
  json.url widget_url(widget, format: :json)
end