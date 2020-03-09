//= require jquery
//= require jquery.ui.datepicker
//= require bootstrap-sprockets
//= require rails-ujs
//= require cocoon
//= require_tree .




function ShowMeDate() {
　var Today=new Date();
　alert("今天日期是 " + Today.getFullYear()+ " 年 " + (Today.getMonth()+1) + " 月 " + Today.getDate() + " 日");
}

