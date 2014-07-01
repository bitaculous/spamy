activate :wundertuete

set :css_dir,    'assets/stylesheets'
set :fonts_dir,  'assets/fonts'
set :images_dir, 'assets/images'
set :js_dir,     'assets/javascripts'

page '*', layout: 'default'

configure :build do # Build-specific configuration
  # activate :relative_assets
  activate :asset_hash, ignore: %r{^*fonts/.*}
  activate :minify_css
  activate :minify_javascript
  activate :gzip

  activate :favicon_maker do |config|
    config.template_dir = File.join root, 'source/assets'
    config.output_dir   = File.join root, 'build'
    config.icons = {
      'favicon.png' => [
        { icon: 'favicon.ico', size: '48x48,32x32,16x16' },
        { icon: 'favicon.png', size: '256x256' },

        { icon: 'apple-touch-icon.png',         size: '57x57' },
        { icon: 'apple-touch-icon-60x60.png',   size: '60x60' },
        { icon: 'apple-touch-icon-72x72.png',   size: '72x72' },
        { icon: 'apple-touch-icon-76x76.png',   size: '76x76' },
        { icon: 'apple-touch-icon-114x114.png', size: '114x114' },
        { icon: 'apple-touch-icon-120x120.png', size: '120x120' },
        { icon: 'apple-touch-icon-144x144.png', size: '144x144' },
        { icon: 'apple-touch-icon-152x152.png', size: '152x152' },

        { icon: 'windows-tile-144x144.png', size: '144x144' },

        { icon: 'coast-icon-228x228.png', size: '228x228' },

        { icon: 'firefox-icon-16x16.png',   size: '16x16' },
        { icon: 'firefox-icon-32x32.png',   size: '32x32' },
        { icon: 'firefox-icon-48x48.png',   size: '48x48' },
        { icon: 'firefox-icon-60x60.png',   size: '60x60' },
        { icon: 'firefox-icon-64x64.png',   size: '64x64' },
        { icon: 'firefox-icon-90x90.png',   size: '90x90' },
        { icon: 'firefox-icon-120x120.png', size: '120x120' },
        { icon: 'firefox-icon-128x128.png', size: '128x128' },
        { icon: 'firefox-icon-256x256.png', size: '256x256' }
      ]
    }
  end
end

after_configuration do
  set :haml, {
    format: :xhtml,
    attr_wrapper: "\"",
    ugly: false
  }
end

# Ignore psd files
ignore 'assets/images/**/*.psd'

# Ignore `favicon.png`
ignore 'assets/favicon.png'