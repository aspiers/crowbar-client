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

module Crowbar
  module Client
    module Command
      module Reset
        extend ActiveSupport::Concern

        included do
          desc "Reset specific commands for nodes/proposals"
          command :reset do |parent|
            parent.desc "Reset specific proposal"
            parent.arg :barclamp
            parent.arg :proposal, :optional
            parent.command :proposal do |c|
              c.action do |global, opts, args|
                # TODO(must): Needs to be implemented in controller
                fail "Not implemented yet!"
              end
            end

            parent.desc "Reset all nodes state"
            parent.command :nodes do |c|
              c.action do |global, opts, args|
                # TODO(must): Needs to be implemented in controller
                fail "Not implemented yet!"
              end
            end
          end
        end
      end
    end
  end
end
