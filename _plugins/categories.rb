# Generate categories output pages.
# Based on: 
# https://uhded.com/automatic-jekyll-categories-page

module Jekyll
    class CategoryPageGenerator < Generator
      safe true
  
      def generate(site)
        if site.layouts.key? 'category'
          dir = site.config['category_dir'] || 'categories'
          blips = site.collections['blips'].docs
          categories = blips.flat_map { |el| el.data['categories'] || [] }
          categories.uniq.each do |category|
            site.pages << CategoryPage.new(site, site.source, File.join(dir, category), category)
          end
        end
      end
    end
  
    # A Page subclass used in the `CategoryPageGenerator`
    class CategoryPage < Page
      def initialize(site, base, dir, category)
        @site = site
        @base = base
        @dir  = dir
        @name = 'index.html'
  
        self.process(@name)
        self.read_yaml(File.join(base, '_layouts'), 'category.html')
        self.data['category'] = category
  
        category_title_prefix = site.config['category_title_prefix'] || 'Category: '
        self.data['title'] = "#{category_title_prefix}#{category}"
      end
    end
  end