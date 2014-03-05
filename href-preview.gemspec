# -*- encoding: utf-8 -*-
# stub: href-preview 0.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "href-preview"
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Bob Aman"]
  s.date = "2014-03-05"
  s.description = "A simple library for efficiently previewing links.\n"
  s.email = "bob@sporkmonger.com"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["CHANGELOG", "Gemfile", "LICENSE", "README.md", "Rakefile", "lib/href-preview.rb", "lib/href_preview", "lib/href_preview.rb", "lib/href_preview/faraday_common_request.rb", "lib/href_preview/fastimage_uri.rb", "lib/href_preview/preview.rb", "lib/href_preview/version.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/clobber.rake", "tasks/gem.rake", "tasks/git.rake", "tasks/metrics.rake", "tasks/spec.rake", "tasks/yard.rake"]
  s.homepage = "https://github.com/sporkmonger/href-preview"
  s.licenses = ["Apache License 2.0"]
  s.rdoc_options = ["--main", "README.md"]
  s.rubygems_version = "2.2.1"
  s.summary = "Package Summary"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0.7.3"])
      s.add_development_dependency(%q<rspec>, [">= 2.9.0"])
      s.add_development_dependency(%q<launchy>, [">= 0.3.2"])
      s.add_development_dependency(%q<vcr>, [">= 2.6.0"])
      s.add_runtime_dependency(%q<addressable>, [">= 2.3.0"])
      s.add_runtime_dependency(%q<faraday>, [">= 0.8.0"])
      s.add_runtime_dependency(%q<faraday_middleware>, [">= 0.8.0"])
      s.add_runtime_dependency(%q<sanitize>, [">= 2.0.0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.5.0"])
      s.add_runtime_dependency(%q<mime-types>, [">= 1.16.0"])
      s.add_runtime_dependency(%q<fastimage>, [">= 1.5.0"])
    else
      s.add_dependency(%q<rake>, [">= 0.7.3"])
      s.add_dependency(%q<rspec>, [">= 2.9.0"])
      s.add_dependency(%q<launchy>, [">= 0.3.2"])
      s.add_dependency(%q<vcr>, [">= 2.6.0"])
      s.add_dependency(%q<addressable>, [">= 2.3.0"])
      s.add_dependency(%q<faraday>, [">= 0.8.0"])
      s.add_dependency(%q<faraday_middleware>, [">= 0.8.0"])
      s.add_dependency(%q<sanitize>, [">= 2.0.0"])
      s.add_dependency(%q<nokogiri>, [">= 1.5.0"])
      s.add_dependency(%q<mime-types>, [">= 1.16.0"])
      s.add_dependency(%q<fastimage>, [">= 1.5.0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0.7.3"])
    s.add_dependency(%q<rspec>, [">= 2.9.0"])
    s.add_dependency(%q<launchy>, [">= 0.3.2"])
    s.add_dependency(%q<vcr>, [">= 2.6.0"])
    s.add_dependency(%q<addressable>, [">= 2.3.0"])
    s.add_dependency(%q<faraday>, [">= 0.8.0"])
    s.add_dependency(%q<faraday_middleware>, [">= 0.8.0"])
    s.add_dependency(%q<sanitize>, [">= 2.0.0"])
    s.add_dependency(%q<nokogiri>, [">= 1.5.0"])
    s.add_dependency(%q<mime-types>, [">= 1.16.0"])
    s.add_dependency(%q<fastimage>, [">= 1.5.0"])
  end
end
