//Begin Preload Images
if (document.images) 
{
   img1 = new Image();
   img2 = new Image();
   img3 = new Image();
   img4 = new Image();
   img5 = new Image();
   img1.src = "http://www.ysbweb.com/ist/flash/ibar/ibarbg.gif";
   img2.src = "http://www.ysbweb.com/ist/flash/ibar/ibarbgon.gif"
   img3.src = "http://www.ysbweb.com/ist/flash/ibar/ibarhide.gif"
   img4.src = "http://www.ysbweb.com/ist/flash/ibar/ibarhideon.gif"
   img5.src = "http://www.ysbweb.com/ist/flash/ibar/ibarshow.gif"         
}
//End Preload Images

function hideLayer(whichLayer) {
   if (document.getElementById) {
	// this is the way the standards work
      document.getElementById(whichLayer).style.visibility = "hidden";
   }
   else if (document.all) {
	// this is the way old msie versions work
      document.all[whichlayer].style.visibility = "hidden";
   }
   else if (document.layers) {
	// this is the way nn4 works
      document.layers[whichLayer].visibility = "hidden";
   }
}

function showLayer(whichLayer) {
   if (document.getElementById) {
	// this is the way the standards work
      document.getElementById(whichLayer).style.visibility = "visible";
   }
   else if (document.all) {
	// this is the way old msie versions work
      document.all[whichlayer].style.visibility = "visible";
   }
   else if (document.layers) {
	// this is the way nn4 works
      document.layers[whichLayer].visibility = "visible";
   }

}

function handleClick(whichClick) {
   if (whichClick == "hide") {
      hideLayer("ibar");
   }
   else if (whichClick == "show") {
      showLayer("ibar");
   }

}
function changeImage (indexNum) {
   if (indexNum == 1) document.images.ibar01.src="http://www.ysbweb.com/ist/flash/ibar/ibarhideon.gif";
   }

function changeBack () {
   document.images.ibar01.src="http://www.ysbweb.com/ist/flash/ibar/ibarhide.gif";
   }
// End Remote Image Change