# Copyright 2014 Bob Aman
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.


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
      response = @app.call env
      response
    end
  end
end
