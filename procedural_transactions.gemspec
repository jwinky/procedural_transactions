# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{procedural_transactions}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin Wienckoski"]
  s.cert_chain = ["/Users/jwinky/Certs/gem-public_cert.pem"]
  s.date = %q{2010-10-17}
  s.description = %q{Procedural interface to ActiveRecord transactions.}
  s.email = %q{jwinky @nospam@ gmail.com}
  s.extra_rdoc_files = ["README.txt", "lib/procedural_transactions.rb"]
  s.files = ["History.txt", "README.txt", "Rakefile", "lib/procedural_transactions.rb", "Manifest", "procedural_transactions.gemspec"]
  s.homepage = %q{http://github.com/jwinky/procedural_transactions}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Procedural_transactions", "--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{procedural_transactions}
  s.rubygems_version = %q{1.3.7}
  s.signing_key = %q{/Users/jwinky/Certs/gem-private_key.pem}
  s.summary = %q{Adds methods to ActiveRecord::Base to manage transactions procedurally instead of being constrained by the transaction method's block syntax.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
