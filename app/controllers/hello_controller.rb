class HelloController < ApplicationController
    def myapi
        # Extract URL parameters
        @loc = params[:loc]
        
        # Return the HTML content as text/html
        template_path = Rails.root.join('app', 'views', 'hello', 'mytable.html.erb')
        html_content = File.read(template_path)
        erb_content = ERB.new(html_content).result(binding)
        # erb_content = `ruby #{template_path}`

        render plain: erb_content, layout: false, content_type: 'text/html'
      end
end
