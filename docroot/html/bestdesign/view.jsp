<%--
/**
* Copyright (c) 2000-2010 Liferay, Inc. All rights reserved.
*
* This library is free software; you can redistribute it and/or modify it under
* the terms of the GNU Lesser General Public License as published by the Free
* Software Foundation; either version 2.1 of the License, or (at your option)
* any later version.
*
* This library is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
* details.
*/
--%>
<%@ include file="init.jsp"%>
<html>
<head>
	

</head>
<style type="text/css" media="screen">
	body {
		font-size: 12px;
	}

	#wrapper {
		padding: 10px;
	}
</style>

<body onload="draw()">
<h1>In View Mode</h1>

<div id="prog_bar" > </div>

<script type="text/javascript">
prog_bar(5,0,100,200,25,"#0066FF","#99FFFF");




</script>

<table border="2">
<tr><td>
<p><button onclick="clickCounter()" type="button">Click me!</button></p>
<div id="result"></div>
<p>Click the button to see the counter increase.</p>
<p>Close the browser tab (or window), and try again, and the counter is reset.</p>

<a href="<%=gotos%>" > Go to S click</a>
<td><tr>
</table>
<div id="wrapper">
	<h1>Alloy AutoComplete</h1>
	<h4>Start typing the name of a state (such as Alaska, California, or Maine)</h4>
	<div id="myAutoComplete"></div>
</div>
<script type="text/javascript" charset="utf-8">
AUI().use('aui-autocomplete', function(A) {

	var states = [
	        ['AL', 'Alabama', 'The Heart of Dixie'],
	        ['AK', 'Alaska', 'The Land of the Midnight Sun'],
	        ['AZ', 'Arizona', 'The Grand Canyon State'],
	        ['AR', 'Arkansas', 'The Natural State'],
	        ['CA', 'California', 'The Golden State'],
	        ['CO', 'Colorado', 'The Mountain State'],
	        ['CT', 'Connecticut', 'The Constitution State'],
	        ['DE', 'Delaware', 'The First State'],
	        ['DC', 'District of Columbia', "The Nation's Capital"],
	        ['FL', 'Florida', 'The Sunshine State'],
	        ['GA', 'Georgia', 'The Peach State'],
	        ['HI', 'Hawaii', 'The Aloha State'],
	        ['ID', 'Idaho', 'Famous Potatoes'],
	        ['IL', 'Illinois', 'The Prairie State'],
	        ['IN', 'Indiana', 'The Hospitality State'],
	        ['IA', 'Iowa', 'The Corn State'],
	        ['KS', 'Kansas', 'The Sunflower State'],
			['KY', 'Kentucky', 'The Bluegrass State'],
	        ['LA', 'Louisiana', 'The Bayou State'],
	        ['ME', 'Maine', 'The Pine Tree State'],
	        ['MD', 'Maryland', 'Chesapeake State'],
	        ['MA', 'Massachusetts', 'The Spirit of America'],
	        ['MI', 'Michigan', 'Great Lakes State'],
	        ['MN', 'Minnesota', 'North Star State'],
	        ['MS', 'Mississippi', 'Magnolia State'],
	        ['MO', 'Missouri', 'Show Me State'],
	        ['MT', 'Montana', 'Big Sky Country'],
	        ['NE', 'Nebraska', 'Beef State'],
	        ['NV', 'Nevada', 'Silver State'],
	        ['NH', 'New Hampshire', 'Granite State'],
	        ['NJ', 'New Jersey', 'Garden State'],
	        ['NM', 'New Mexico', 'Land of Enchantment'],
	        ['NY', 'New York', 'Empire State'],
	        ['NC', 'North Carolina', 'First in Freedom'],
	        ['ND', 'North Dakota', 'Peace Garden State'],
	        ['OH', 'Ohio', 'The Heart of it All'],
	        ['OK', 'Oklahoma', 'Oklahoma is OK'],
	        ['OR', 'Oregon', 'Pacific Wonderland'],
	        ['PA', 'Pennsylvania', 'Keystone State'],
	        ['RI', 'Rhode Island', 'Ocean State'],
	        ['SC', 'South Carolina', 'Nothing Could be Finer'],
	        ['SD', 'South Dakota', 'Great Faces, Great Places'],
	        ['TN', 'Tennessee', 'Volunteer State'],
	        ['TX', 'Texas', 'Lone Star State'],
	        ['UT', 'Utah', 'Salt Lake State'],
	        ['VT', 'Vermont', 'Green Mountain State'],
	        ['VA', 'Virginia', 'Mother of States'],
	        ['WA', 'Washington', 'Green Tree State'],
	        ['WV', 'West Virginia', 'Mountain State'],
	        ['WI', 'Wisconsin', "America's Dairyland"],
	        ['WY', 'Wyoming', 'Like No Place on Earth']
	    ];

	window.AC = new A.AutoComplete(
		{
			dataSource: states,
			schema: {
				resultFields: ['key', 'name', 'description']
			},
			matchKey: 'name',
			delimChar: ',',
			typeAhead: true,
			contentBox: '#myAutoComplete'
		}
	);

	AC.render();
});
</script>


</body>
</html>