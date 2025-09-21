# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "안승우"
  spec.version       = "0.5.0"
  spec.authors       = ["Sujay Kundu"]
  spec.email         = ["anseungu56@gmail.com"]

  spec.summary       = %q{ 성일정보고등학교 재학중인 개발계의 마이클 잭슨이 되고싶은 안승우입니다. }
  spec.homepage      = "https://github.com/S3un9-W00/"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|categories|tags|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", ">= 3.5", "< 5.0"
  spec.add_runtime_dependency "jekyll-sitemap", '~> 1.4.0'
  spec.add_runtime_dependency "jekyll-feed", '>= 0.13', '< 0.18'
  spec.add_runtime_dependency "jekyll-seo-tag", '~> 2.6.1'
  spec.add_runtime_dependency "jekyll-paginate", '~> 1.1.0'
  spec.add_runtime_dependency "jekyll-gist", '~> 1.5.0'
  # spec.add_runtime_dependency "jekyll-admin", '~> 0.11.0'

  spec.add_development_dependency "bundler", "~> 2.5.15"
  spec.add_development_dependency "rake", "~> 13.2.1"
end