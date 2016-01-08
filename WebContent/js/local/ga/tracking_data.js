/* Tracking data*/

/* promoted product info*/
var prom_prod_category_id_list 	= ["1","2","2"];
var prom_prod_item_name_list	= ["1-item1","2-item1","2-item2"];
var prom_prod_data				= new Array(3);
var prod_data_length 			= prom_prod_data.length;

for(var i=0; i<prod_data_length; i++){
	prom_prod_data[i] = {
		'category_id'	: prom_prod_category_id_list[i],
		'item_name'		: prom_prod_item_name_list[i]
	};
}		

/* hot product info*/
var hot_prod_category_id_list 	= ["4","5","5","6","7","7"];
var hot_prod_item_name_list		= ["4-item1","5-item1","5-item2","6-item1","7-item1","7-item2"];
var hot_prod_data				= new Array(6);
var hot_data_length 			= hot_prod_data.length;

for(var i=0; i<hot_data_length; i++){
	hot_prod_data[i] = {
		'category_id'	: hot_prod_category_id_list[i],
		'item_name'		: hot_prod_item_name_list[i]
	};
}

/* contact us */
var contact_us_data	= {
	'click_category': 'follow up',
    'click_name'	: 'contact us'
};