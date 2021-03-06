#
# Copyright 2015, SUSE Linux GmbH
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "crowbar/client/version"

Gem::Specification.new do |s|
  s.name = "crowbar-client"
  s.version = Crowbar::Client::Version
  s.date = Time.now.strftime("%F")

  s.authors = ["Thomas Boerger"]
  s.email = ["tboerger@suse.de"]

  s.summary = <<-EOF
    Crowbar commandline client
  EOF

  s.description = <<-EOF
    Standalone commandline client for crowbar
  EOF

  s.homepage = "https://github.com/crowbar/crowbar-client"
  s.license = "Apache-2.0"

  s.files = ["CHANGELOG.md", "README.md", "LICENSE"]
  s.files += Dir.glob("lib/**/*")
  s.files += Dir.glob("bin/**/*")

  s.test_files = Dir.glob("spec/**/*")

  s.executables = ["crowbar"]
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 1.9.3"

  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "yard"
  s.add_development_dependency "rspec"
  s.add_development_dependency "aruba"

  s.add_runtime_dependency "httparty", ">= 0.13.3"
  s.add_runtime_dependency "gli", ">= 2.13.0"
  s.add_runtime_dependency "activesupport", ">= 3.0.0"
  s.add_runtime_dependency "inifile", ">= 3.0.0"
  s.add_runtime_dependency "terminal-table", ">= 1.5.2"
end
