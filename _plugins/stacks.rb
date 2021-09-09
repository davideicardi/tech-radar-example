# Generate stacks output pages.
# Based on: 
# https://uhded.com/automatic-jekyll-categories-page

module Jekyll
    class StackPageGenerator < Generator
      safe true
  
      def generate(site)
        if site.layouts.key? 'stack'
          dir = site.config['stack_dir'] || 'stacks'
          blips = site.collections['blips'].docs
          stacks = blips.flat_map { |el| el.data['stack'] || [] }
          stacks.uniq.each do |stack|
            site.pages << StackPage.new(site, site.source, File.join(dir, stack), stack)
          end
        end
      end
    end
  
    # A Page subclass used in the `StackPageGenerator`
    class StackPage < Page
      def initialize(site, base, dir, stack)
        @site = site
        @base = base
        @dir  = dir
        @name = 'index.html'
  
        self.process(@name)
        self.read_yaml(File.join(base, '_layouts'), 'stack.html')
        self.data['stack'] = stack
  
        stack_title_prefix = site.config['stack_title_prefix'] || 'Stack: '
        self.data['title'] = "#{stack_title_prefix}#{stack}"
      end
    end
  end