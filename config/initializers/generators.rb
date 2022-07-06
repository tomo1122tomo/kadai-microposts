# CSS, JS, Helper関係のファイルは自動生成されません
Rails.application.config.generators do |g|
  g.stylesheets false
  g.javascripts false
  g.helper false
  g.skip_routes true
end
