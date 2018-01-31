/**
 * 
 */
bootbox.dialog({
	message : mes,
	title : title,
	buttons : {
		Cancel : {
			label : "Cancel",
			className : "btn-default",
			callback : function() {
				if (typeof callback == "function") {
					callback();
				}
			}
		},
		OK : {
			label : "OK",
			className : "btn-primary",
			callback : function() {
				if (typeof callback == "function") {
					callback();
				}
			}
		}
	}
});