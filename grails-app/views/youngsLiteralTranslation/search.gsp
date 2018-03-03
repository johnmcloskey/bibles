<%@ page import="com.johnmcloskey.YoungsLiteralTranslation" %>
<!DOCTYPE html>
<html lang="en" class="no-js" xmlns="http://www.w3.org/1999/html">
<body>
<!DOCTYPE html>
<head>
<title>search ylt</title>
<link rel="stylesheet" href="http://johnmcloskey.com/css/search.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js" type="text/javascript"></script>

<%--<script src="app.js" type="text/javascript"></script>--%>

<g:javascript>
"
var app = angular.module("instantSearch", []);
app.filter('searchFor', function(){
	return function(arr, searchString){
		if(!searchString){
			return arr;
		}
		var result = [];
		searchString = searchString.toLowerCase();
		angular.forEach(arr, function(item){
			if(item.verseText.toLowerCase().indexOf(searchString) !== -1){
				result.push(item);
			}
		});
		return result;
	};
});
app.controller("InstantSearchController", function($scope, $http) {
  $http.get('/bibles/youngsLiteralTranslation/searchList').
    success(function(data, status, headers, config) {
      $scope.items = data;
    }).
    error(function(data, status, headers, config) {
    });
});
"
</g:javascript>

<link rel="stylesheet" type="text/css" href="http://johnmcloskey.com/css/default.css" />
<link rel="stylesheet" type="text/css" href="http://johnmcloskey.com/css/component.css" />
<script src="http://johnmcloskey.com/js/modernizr.js"></script>

<body>
<div class="container">
    <header class="clearfix">
      <a href="/"><h1>Youngs Literal Translation</a></h1>
    </header>
    <div class="main">
        <ul id="cbp-ntaccordion" class="cbp-ntaccordion">
            <li>
		<div ng-app="instantSearch" ng-controller="InstantSearchController">
        	<div class="bar">
                <input type="text" ng-model="searchString" placeholder="What would you like to read about" />
        	</div>
        	<ul>
                	<li ng-repeat="i in items | searchFor:searchString">
                        	
                        	<%-- <g:link target="_blank" controller="youngsLiteralTranslation" action="chapterView" params="[book: 'Exodus', chapter: '1']"> --%>
                			
                			<a target="_blank" href="/bibles/youngsLiteralTranslation/chapterView?book={{i.book}}&chapter={{i.chapter}}"><img ng-src="arrow.png" /></a>
                			
                			<%-- </g:link> --%>
                        	<p>{{i.book}} {{i.chapter}}:{{i.verse}} {{i.verseText}}</p>
               	</li>
        </ul>
</div>
            </li>
        </ul>
    </div>
</div>
</body>
</html>