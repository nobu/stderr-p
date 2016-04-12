# -*- coding: us-ascii -*-

Gem::Specification.new do |s|
  s.name          = "stderr-p"
  s.version       = "0.0.1"
  s.authors       = ["Nobu Nakada"]
  s.email         = ["nobu@ruby-lang.org"]
  s.summary       = "Inspect to STDERR"
  s.description   = "Print instect results to STDERR."
  s.homepage      = "https://github.com/nobu/stderr-p"
  s.license       = "BSD-2-Clause"
  s.cert_chain    = %w[certs/nobu.pem]
  s.signing_key   = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/

  s.files         = %w[
    COPYING
    README.md
    stderr-p.gemspec
    lib/stderr/p.rb
    test/test_stderr_p.rb
  ]

  s.test_files    = s.files.grep(/\Atest\//)
  s.require_paths = ["lib"]
end
