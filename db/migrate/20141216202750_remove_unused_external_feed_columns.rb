#
# Copyright (C) 2014 - present Instructure, Inc.
#
# This file is part of Canvas.
#
# Canvas is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.

class RemoveUnusedExternalFeedColumns < ActiveRecord::Migration[4.2]
  tag :postdeploy

  def up
    remove_column :external_feeds, :body_match
    remove_column :external_feeds, :feed_type
    remove_column :external_feeds, :feed_purpose
  end

  def down
    add_column :external_feeds, :body_match, :string
    add_column :external_feeds, :feed_type, :string
    add_column :external_feeds, :feed_purpose, :string
  end
end
