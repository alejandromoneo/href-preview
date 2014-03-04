module Faraday
  class CommonRequest < Faraday::Middleware
    def initialize(app, *args)
      @app = app
      @options = args.shift || {}
      @options.merge!(
        :user_agent => (
          "Mozilla/5.0 (compatible; " +
          "HRefPreview/#{HRefPreview::VERSION::STRING}; " +
          "+https://github.com/sporkmonger/href-preview)"
        ),
        :accept => "*/*"
      )
      @user_agent = @options[:user_agent]
      @accept = @options[:accept]
    end

    def call(env)
      env[:request_headers].merge!('User-Agent' => @user_agent)
      env[:request_headers].merge!('Accept' => @accept)
      @app.call env
    end
  end
end
