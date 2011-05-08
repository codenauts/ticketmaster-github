# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ticketmaster-github}
  s.version = "0.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["HybridGroup"]
  s.date = %q{2011-05-08}
  s.description = %q{This provides an interface with github through the ticketmaster gem.}
  s.email = %q{hong.quach@abigfisch.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.md"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "lib/provider/comment.rb",
     "lib/provider/github.rb",
     "lib/provider/project.rb",
     "lib/provider/ticket.rb",
     "lib/ticketmaster-github.rb",
     "spec/comment_spec.rb",
     "spec/factories/comment.rb",
     "spec/factories/issue.rb",
     "spec/factories/repository.rb",
     "spec/project_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/ticket_spec.rb",
     "spec/ticketmaster-github_spec.rb",
     "ticketmaster-github.gemspec"
  ]
  s.homepage = %q{http://github.com/kiafaldorius/ticketmaster-github}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{The github provider for ticketmaster}
  s.test_files = [
    "spec/comment_spec.rb",
     "spec/factories/comment.rb",
     "spec/factories/issue.rb",
     "spec/factories/repository.rb",
     "spec/project_spec.rb",
     "spec/spec_helper.rb",
     "spec/ticket_spec.rb",
     "spec/ticketmaster-github_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_runtime_dependency(%q<hybridgroup-octokit>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<hybridgroup-octokit>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<hybridgroup-octokit>, [">= 0"])
  end
end

