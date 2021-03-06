<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
.mini-cal {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	font-family: Verdana, sans-serif;
	padding-bottom: 1.2em;
	background: #2f323a;
	color: #fff
}

#calTitle {
	display: flex;
	justify-content: space-between;
	-ms-align-items: center;
	align-items: center;
	font-size: 1.12em;
	text-align: center;
	padding: .8em 1em .4em
}

#calTitle button {
	outline: 0;
	display: block;
	border: .1em solid #ddd;
	border: none;
	padding: 0;
	width: 40px;
	height: 40px;
	line-height: 60px;
	border-radius: 50%;
	background-color: rgba(0, 0, 0, .1)
}

#calTitle button svg {
	width: 30px;
	height: 30px
}

#calTitle button:hover {
	background: rgba(255, 255, 255, .1)
}

#calTbody, #calThead {
	display: flex;
	flex-wrap: wrap;
	padding: .1em
}

#calThead {
	color: #fff;
	margin-top: .4em;
	align-items: center;
	text-align: center;
	font-size: .88em
}

#calTbody .a-date, #calThead>div {
	box-sizing: border-box;
	flex: 1;
	min-width: calc(100%/ 7);
	max-width: calc(100%/ 7);
	width: calc(100%/ 7);
	text-align: center
}

#calThead>div {
	font-size: 1.1em;
	padding: .2em
}

#calTbody {
	color: #ddd
}

#calTbody .a-date>span {
	display: block;
	font-size: 1em
}

#calTbody .a-date {
	cursor: default;
	position: relative;
	background-color: transparent;
	color: inherit;
	padding: 1em;
	border: .1em solid transparent;
	outline: 0;
	font-size: .9em
}

#calTbody .a-date.blurred {
	opacity: .5;
	pointer-events: none
}

#calTbody .a-date.event:before {
	content: '';
	position: absolute;
	top: .2em;
	right: 0;
	left: 0;
	margin: auto;
	background-color: #fffc23;
	width: .3em;
	height: .3em;
	border-radius: 50%
}

#calTbody .a-date.current {
	border-color: #fffc23;
	outline: 0
}

#calTbody .a-date.current.event {
	background-color: #fffc23;
	color: #000
}

#calTbody .a-date:active, #calTbody .a-date:focus {
	background: #3f4042
}

#calTFooter {
	display: flex;
	justify-content: space-between;
	-ms-align-items: center;
	align-items: center;
	font-size: 1.1em;
	padding: 0 1em;
	margin-top: .5em
}

#calTFooter #calLink {
	font-size: .8em;
	display: inline-block;
	padding: .6em .8em;
	flex-shrink: 0;
	text-decoration: none;
	color: #fffc23
}

#calTFooter #calLink:hover {
	background-color: #555
}

#calTFooter #eventTitle {
	margin: 0 .1em 0 0;
	font-weight: 400;
	font-size: .95em;
	white-space: nowrap;
	overflow: hidden;
	-ms-text-overflow: ellipsis;
	text-overflow: ellipsis
}

</style>
 <!--   <meta charset="UTF-8">
   <link rel="stylesheet" href="src/mini-event-calendar.min.css">

   <h3>With events...</h3>
   <div id="calendar" style="width: 30%;"></div> <br>

   <h3>Without events....</h3>
   <div id="calendar2" style="width: 25%;"></div>
   
   
   <div class='a-date blurred'><a href='NewFile.html'><span>"+e+"</span></a></div>
 -->


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<!--    <script src="src/mini-event-calendar.min.js"></script>
 -->
   <script>
       var db_events = [
          {
               title: "Board members meeting.",
               date: 1532381440036,
               link: "events.com/ev2"
           },
           {
               title: "Delaware branch opening.",
               date: 1532467961534,
               link: "events.com/ev1"
           },
           {
               title: "An important event.",
               date: 1532554405128,
               link: "events.com/ev1"
           }
       ];

      $(document).ready(function(){
         $("#calendar2").MEC({
            calendar_link: "example.com/myCalendar",
            events: db_events
         });

         //if you don't have events, use
         $("#calendar").MEC();
      });
      
      !function($){
         var e=[
            "Jan",
            "Feb",
            "Mar",
            "Apr",
            "May",
            "Jun",
            "Jul",
            "Aug",
            "Sep",
            "Oct",
            "Nov",
            "Dec"
         ],
         n=new Date,
         a=n.getMonth(),
         i=n.getFullYear();$.fn.miniEventCalendar=$.fn.MEC=function(n){
            var d=$.extend({
               calendar_link:"",
               events:[]
            },
            n),
            v=this;v.addClass("mini-cal")
               .html('<div id="calTitle"><button class="month-mover prev"><svg fill="#FFFFFF" height="30" viewBox="0 0 24 24" width="30" xmlns="http://www.w3.org/2000/svg"><path d="M15.41 7.41L14 6l-6 6 6 6 1.41-1.41L10.83 12z"/><path d="M0 0h24v24H0z" fill="none"/></svg></button><div id="monthYear"></div><button class="month-mover next"><svg fill="#FFFFFF" height="30" viewBox="0 0 24 24" width="30" xmlns="http://www.w3.org/2000/svg"><path d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"/><path d="M0 0h24v24H0z" fill="none"/></svg></button></div><div><div id="calThead"><div>S</div><div>M</div><div>T</div><div>W</div><div>T</div><div>F</div><div>S</div></div><div id="calTbody"></div></div><div id="calTFooter"><h3 id="eventTitle">No events today.</h3><a href="javascript:void(0);" id="calLink">ALL EVENTS</a></div>');
               var l=v.find("#calTbody"),
            r=v.find("#monthYear"),
            o=v.find("#calTFooter"),
            s=v.find("#eventTitle"),
            h=v.find("#calLink");function c(t,
            n){
               l.html(""),
               r.text(e[
                  t
               ]+" "+n),
               a=t,
               i=n;var o=new Date(n,
               t),
               s=new Date(o);for(1===o.getDate()&&1!=s.getDay()&&l.append(function(t){
                  if(a>0)var e=a-1,
                  n=i;else if(a<11)var e=0,
                  n=i+1;else var e=11,
                  n=i-1;for(var d=function(t,
                  e){
                     var n=new Date(e,
                     t,
                     1),
                     a=[];for(;n.getMonth()===t;)a.push(n.getDate()),
                     n.setDate(n.getDate()+1);return a
                  }(e,
                  n),
                  v="",
                  l=t;l>0;l--)v+=f(!0,
                  d[
                     d.length-l
                  ]);return v
               }(s.getDay()));o.getMonth()===t;){
                  s=new Date(o);var h=g(o,
                  new Date),
                  c=null,
                  p=d.events.findIndex(function(t){
                     return g(s,
                     new Date(t.date))
                  });-1!=p&&(c=d.events[
                     p
                  ],
                  h&&u(c)),
                  l.append(f(!1,
                  o.getDate(),
                  h,
                  c)),
                  o.setDate(o.getDate()+1);var F=43-v.find(".a-date").length;if(o.getMonth()!=t)for(var w=1;w<F;w++)l.append(f(!0,
                  w))
               }
            }function f(t,
            e,
            n,
            a){
               var i="<div class='a-date blurred'><a href='NewFile.html'><span>"+e+"</span></a></div>";if(!t){
                  var d=n?"current ":"";i="<button class='a-date "+(d+=a&&null!==a?"event ":"")+"' data-event='"+JSON.stringify(a)+"'><a href='NewFile.html'><span>"+e+"</span></a></button>"
               }return i
            }function u(t){
               t&&null!=t?(s.text(t.title),
               h.text("VIEW EVENT"),
               h.attr("href",
               t.link)):(s.text("No events on this day."),
               h.text("ALL EVENTS"),
               h.attr("href",
               d.calendar_link))
            }function g(t,
            e){
               return t.getFullYear()==e.getFullYear()&&t.getMonth()==e.getMonth()&&t.getDate()==e.getDate()
            }return r.text("Feb 2018"),
            s.text("No events today."),
            h.text("ALL EVENTS"),
            h.attr("href",
            d.calendar_link),
            d.calendar_link.length||d.events.length||o.css("display",
            "none"),
            v.find(".month-mover").each(function(){
               var e=$(this);e.bind("click",
               function(){
                  e.hasClass("next")?c(a<11?a+1:0,
                  a<11?i:i+1):c(a>0?a-1:11,
                  a>0?i:i-1)
               })
            }),
            v.on("click, focusin",
            ".a-date",
            function(){
               $(this).hasClass("blurred")||u($(this).data("event"))
            }),
            c(a,
            i),
            v
         }
      }(jQuery);   </script>