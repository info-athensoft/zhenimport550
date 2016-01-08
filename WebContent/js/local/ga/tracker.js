/* Tracking snippet*/

//GA library
(function(i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r;
    i[r] = i[r] || function() {
        (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o), m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

//page views
ga('create', 'UA-65001154-3', 'auto');
ga('set', 'title', data_layer.page_name);
ga('set', 'dimension1', data_layer.user_name);
ga('send', 'pageview');

//clicks   
function track(data) {
	
		//alert("ok");
		
	   if (!!data.category_id){
	      ga('send', 'event', 'category: ' + data.category_id, 'item: ' + data.item_name, 'user_name: ' + data_layer.user_name);
	   }
	   
	   if (!!data.click_category){
	      ga('send', 'event', data.click_category, data.click_name, 'user_name: ' + data_layer.user_name);
	   }
}


/*
function testLink(data){
	alert(data.category_id+" "+data.item_name);
	//alert("ok");
}*/