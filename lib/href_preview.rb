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


require 'addressable/uri'
require 'faraday'
require 'faraday_middleware'
require 'href_preview/version'
require 'href_preview/preview'
require 'href_preview/faraday_common_request'

module HRefPreview
  DEFAULT_CONNECTION = Faraday.new do |connection|
    connection.use FaradayMiddleware::FollowRedirects, {:limit => 5}
    connection.use Faraday::CommonRequest
    connection.adapter :net_http
  end

  def self.open(uri, connection=DEFAULT_CONNECTION)
    response = connection.get(Addressable::URI.parse(uri))
    return HRefPreview::Preview.new(response, connection)
  end
end
