###
# Copyright (C) 2014-2016 Taiga Agile LLC <taiga@taiga.io>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#
# File: tag-line.directive.coffee
###

module = angular.module('taigaCommon')

TagDirective = () ->
    link = (scope, el, attr, ctrl) ->
        console.log 'tag', scope.hasPermissions

    return {
        link: link
        templateUrl:"components/tags/tag/tag.html",
        scope: {
            tag: "<",
            onDeleteTag: "&",
            loadingRemoveTag: "@",
            hasPermissions: "@"
        }
    }

module.directive("tgTag", TagDirective)
