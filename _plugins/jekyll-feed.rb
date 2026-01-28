Jekyll::Hooks.register :site, :after_init do |site|
  site.config['feed'] ||= {}

  # Use full content in the generated feed
  site.config['feed']['excerpt_only'] = false

  # Move jekyll-feed output away from /feed.xml so our custom feed.xml is served
  site.config['feed']['path'] = 'rss.xml'
end
