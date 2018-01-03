function showSearch() {
	$("#txtSearch").show();
}

// 	Click Login
$(document).ready(function(){
	$("#login").click(function(){
		$("#ModalLogin").modal();
	});
});

// Click Sign Up
$(document).ready(function(){
	$("#signup").click(function(){
		$(".close").click();
		$("#ModalSignUp").modal();
	});
});

// Click reset password
$(document).ready(function(){
	$("#resetPassword").click(function(){
		$(".close").click();
		$("#ModalResetPassword").modal();
	});
});

// go top page
$(document).ready(function() {
	$(".goTopPage").hide();
	$(window).scroll(function() {
		var pageHeader = $(window).height();
		var currentCursor = $(window).scrollTop();
		if(currentCursor > pageHeader / 8) {
			$(".goTopPage").show();
		} else {
			$(".goTopPage").hide();
		};
	});
});

// show/hide txtSearch
$(document).ready(function () {
	$('#btnSearchPlus').click(function(){
		$(".search").css("padding-top", "10px");
		$(".search").toggle();

		// txtSearch is hidden
		if ($("#txtSearch").is(":visible") == false) {
			// remove css padding div .search
			$(".search").css("padding", "");
		} else {
			$(".search").css("padding", "10px");
		}
		$("#navMenu").toggle();
	});
});

$(document).ready(function () {
	$("#btnCloseSearch").click(function () {
		$(".search").toggle();
		$("#navMenu").toggle();
	});
});