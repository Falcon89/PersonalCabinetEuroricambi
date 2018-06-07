<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset=UTF-8>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Admin panel Euroricamby</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>
</head>
<jsp:include page="include_css.jsp"/>
<fmt:requestEncoding value="UTF-8"/>

<body>

<div class="wrapper">
    <jsp:include page="headerLeftMenu.jsp"/>

    <div class="main-panel">
        <jsp:include page="headerUpMenu.jsp"/>
        <div class="content">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12 col-sm-12">
                        <!--fine slider-->
                        <div class="container" id="main-container">
                            <table width="100%">
                                <tr>
                                    <td width="80%" align="left" class="first_column">
                                        <div class="row  page-title">

                                            <style type="text/css">
                                                table.cata { border: 0 none; float: left; width: 340px; }
                                                .imgcata { padding-bottom: 15px; text-align: left; vertical-align: top; width: 90px; }
                                                .imgcata img { border: 0 none; float: left; max-width: 60px;}
                                                .cellacata { color: #000000; font-size: 12px; font-weight: bold; line-height: 15px; padding-bottom: 5px; padding-right: 20px; text-align: left; vertical-align: top; width: 220px; }
                                                .cellacataimg1 { border: 0 none; margin-left: -20px; padding-right: 4px; position: relative; }
                                                .cellacataimg2 { border: 0 none; padding-left: 4px; position: relative; }
                                                .cellacata strong { color: #505B64; font-size: 9px; font-weight: normal; }
                                                .cellacata a { font-style: normal; text-decoration: none; color: #000000; }
                                                .maincontent { margin-top: 20px; }
                                            </style>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <h2>
                                                            Каталог Euroricambi
                                                        </h2>
                                                    </td>
                                                </tr>
                                            </table>

                                        </div>
                                    </td>
                                    <td width="20%" align="left" class="second_column">
                                        <div class="row  page-title">


                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="80%" align="left" valign="top" style="padding-right: 35px;" class="first_column">
                                        <div class="row block-content">


                                            <div class="maincontent">

                                                <div id="ctl00_cphAction_pnlContent">

                                                    <table id="ctl00_cphAction_dlCataloghi" cellspacing="0" border="0" style="width:100%;border-collapse:collapse;">
                                                        <tr>
                                                            <td>
                                                                <table>
                                                                    <tr>
                                                                        <td class="imgcata">

                                                                            <img src="images/cataloghi/new/thumbs/12.jpg" id="ctl00_cphAction_dlCataloghi_ctl00_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                        </td>
                                                                        <td class="cellacata">
                                                                            <div id="ctl00_cphAction_dlCataloghi_ctl00_pnlLink">

                                                                                <a href="catalogueCaterpillar.html" target="_blank">
                                                                                    <img class="cellacataimg1" src="images/layout/pdf.gif" alt="pdf" />CATERPILLAR

                                                                                    <strong>
                                                                                        <div>Updated Catalogue 03/2018</div>
                                                                                        <div></div>
                                                                                        <img src="images/cataloghi/badge-earthmoving.jpg" id="ctl00_cphAction_dlCataloghi_ctl00_imgBadgeHM" />
                                                                                    </strong></a>

                                                                            </div>

                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td><td>
                                                            <table>
                                                                <tr>
                                                                    <td class="imgcata">

                                                                        <img src="images/cataloghi/new/thumbs/60_7_2.jpg" id="ctl00_cphAction_dlCataloghi_ctl08_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                    </td>
                                                                    <td class="cellacata">
                                                                        <div id="ctl00_cphAction_dlCataloghi_ctl08_pnlLink">

                                                                            <a href="catalogueMarcedesBenz2.html" target="_blank">
                                                                                <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />Mercedes-Benz

                                                                                <strong>
                                                                                    <div>MB Differential Old Generation 7/2</div>
                                                                                    <div>Updated 2015</div>

                                                                                </strong></a>

                                                                        </div>

                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td><td>
                                                            <table>
                                                                <tr>
                                                                    <td class="imgcata">

                                                                        <img src="images/cataloghi/new/thumbs/95_12_5.jpg" id="ctl00_cphAction_dlCataloghi_ctl15_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                    </td>
                                                                    <td class="cellacata">
                                                                        <div id="ctl00_cphAction_dlCataloghi_ctl15_pnlLink">

                                                                            <a href="catalogueZFTransmissions1.html" target="_blank">
                                                                                <img class="cellacataimg1" src="images/layout/pdf.gif" alt="pdf" />ZF Transmissions

                                                                                <strong>
                                                                                    <div>ZF Brazil Version 12/5 </div>
                                                                                    <div>Updated ZF Old Generation 12/1</div>

                                                                                </strong></a>

                                                                        </div>

                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        </tr><tr>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td class="imgcata">

                                                                        <img src="images/cataloghi/new/thumbs/18.jpg" id="ctl00_cphAction_dlCataloghi_ctl01_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                    </td>
                                                                    <td class="cellacata">
                                                                        <div id="ctl00_cphAction_dlCataloghi_ctl01_pnlLink">

                                                                            <a href="catalogueDaf.html" target="_blank">
                                                                                <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />DAF

                                                                                <strong>
                                                                                    <div>Updated 2016</div>
                                                                                    <div></div>

                                                                                </strong></a>

                                                                        </div>

                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td><td>
                                                        <table>
                                                            <tr>
                                                                <td class="imgcata">

                                                                    <img src="images/cataloghi/new/thumbs/60_7_3.jpg" id="ctl00_cphAction_dlCataloghi_ctl09_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                </td>
                                                                <td class="cellacata">
                                                                    <div id="ctl00_cphAction_dlCataloghi_ctl09_pnlLink">

                                                                        <a href="catalogueMarcedesBenz3.html" target="_blank">
                                                                            <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />Mercedes-Benz

                                                                            <strong>
                                                                                <div>MB Differential New Generation 7/3</div>
                                                                                <div>Updated 2015</div>

                                                                            </strong></a>

                                                                    </div>

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td><td>
                                                        <table>
                                                            <tr>
                                                                <td class="imgcata">

                                                                    <img src="images/cataloghi/new/thumbs/95_12_3.jpg" id="ctl00_cphAction_dlCataloghi_ctl16_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                </td>
                                                                <td class="cellacata">
                                                                    <div id="ctl00_cphAction_dlCataloghi_ctl16_pnlLink">

                                                                        <a href="catalogueZFTransmissions2.html" target="_blank">
                                                                            <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />ZF Transmissions

                                                                            <strong>
                                                                                <div>ZF Ecosplit I-II-III / New Ecosplit 12/3-4</div>
                                                                                <div>Updated 2016</div>

                                                                            </strong></a>

                                                                    </div>

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    </tr><tr>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td class="imgcata">

                                                                        <img src="images/cataloghi/new/thumbs/24.jpg" id="ctl00_cphAction_dlCataloghi_ctl02_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                    </td>
                                                                    <td class="cellacata">
                                                                        <div id="ctl00_cphAction_dlCataloghi_ctl02_pnlLink">

                                                                            <a href="catalogueDana.html" target="_blank">
                                                                                <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />DANA (Eaton Axles)

                                                                                <strong>
                                                                                    <div>04/2018</div>
                                                                                    <div></div>

                                                                                </strong></a>

                                                                        </div>

                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td><td>
                                                        <table>
                                                            <tr>
                                                                <td class="imgcata">

                                                                    <img src="images/cataloghi/new/thumbs/70.jpg" id="ctl00_cphAction_dlCataloghi_ctl10_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                </td>
                                                                <td class="cellacata">
                                                                    <div id="ctl00_cphAction_dlCataloghi_ctl10_pnlLink">

                                                                        <a href="catalogueRenaultTrucks.html" target="_blank">
                                                                            <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />Renault Trucks
                                                                            <img src="images/cataloghi/euroamg.gif" id="ctl00_cphAction_dlCataloghi_ctl10_imgEuroAmGears" class="cellacataimg2" alt="Euroricambi-AMGears" />
                                                                            <strong>
                                                                                <div>Updated 08/2016</div>
                                                                                <div></div>

                                                                            </strong></a>

                                                                    </div>

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td><td>
                                                        <table>
                                                            <tr>
                                                                <td class="imgcata">

                                                                    <img src="images/cataloghi/new/thumbs/95_12_6.jpg" id="ctl00_cphAction_dlCataloghi_ctl17_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                </td>
                                                                <td class="cellacata">
                                                                    <div id="ctl00_cphAction_dlCataloghi_ctl17_pnlLink">

                                                                        <a href="catalogueZFTransmissions3.html" target="_blank">
                                                                            <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />ZF Transmissions

                                                                            <strong>
                                                                                <div>ZF AS Tronic and eTronic 12/6</div>
                                                                                <div>Updated 08/2016</div>

                                                                            </strong></a>

                                                                    </div>

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    </tr><tr>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td class="imgcata">

                                                                        <img src="images/cataloghi/new/thumbs/30.jpg" id="ctl00_cphAction_dlCataloghi_ctl03_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                    </td>
                                                                    <td class="cellacata">
                                                                        <div id="ctl00_cphAction_dlCataloghi_ctl03_pnlLink">

                                                                            <a href="catalogueIveco.html" target="_blank">
                                                                                <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />IVECO

                                                                                <strong>
                                                                                    <div>09/2017</div>
                                                                                    <div></div>

                                                                                </strong></a>

                                                                        </div>

                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td><td>
                                                        <table>
                                                            <tr>
                                                                <td class="imgcata">

                                                                    <img src="images/cataloghi/new/thumbs/74.jpg" id="ctl00_cphAction_dlCataloghi_ctl11_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                </td>
                                                                <td class="cellacata">
                                                                    <div id="ctl00_cphAction_dlCataloghi_ctl11_pnlLink">

                                                                        <a href="catalogueScania.html" target="_blank">
                                                                            <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />SCANIA

                                                                            <strong>
                                                                                <div>05/2016</div>
                                                                                <div></div>

                                                                            </strong></a>

                                                                    </div>

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td><td>
                                                        <table>
                                                            <tr>
                                                                <td class="imgcata">

                                                                    <img src="images/cataloghi/new/thumbs/95_12_7.jpg" id="ctl00_cphAction_dlCataloghi_ctl18_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                </td>
                                                                <td class="cellacata">
                                                                    <div id="ctl00_cphAction_dlCataloghi_ctl18_pnlLink">

                                                                        <a href="catalogueZFTransmissions4.html" target="_blank">
                                                                            <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />ZF Transmissions

                                                                            <strong>
                                                                                <div>ZF Ecosplit IV 12/7 - 2015</div>
                                                                                <div></div>

                                                                            </strong></a>

                                                                    </div>

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    </tr><tr>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td class="imgcata">

                                                                        <img src="images/cataloghi/new/thumbs/35_4_1.jpg" id="ctl00_cphAction_dlCataloghi_ctl04_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                    </td>
                                                                    <td class="cellacata">
                                                                        <div id="ctl00_cphAction_dlCataloghi_ctl04_pnlLink">

                                                                            <a href="catalogueFullerTr.html" target="_blank">
                                                                                <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />FULLER Transmissions Heavy Duty

                                                                                <strong>
                                                                                    <div>Updated 2014</div>
                                                                                    <div></div>

                                                                                </strong></a>

                                                                        </div>

                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td><td>
                                                        <table>
                                                            <tr>
                                                                <td class="imgcata">

                                                                    <img src="images/cataloghi/new/thumbs/81.jpg" id="ctl00_cphAction_dlCataloghi_ctl12_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                </td>
                                                                <td class="cellacata">
                                                                    <div id="ctl00_cphAction_dlCataloghi_ctl12_pnlLink">

                                                                        <a href="catalogueMeritor.html" target="_blank">
                                                                            <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />MERITOR

                                                                            <strong>
                                                                                <div>Updated 2016</div>
                                                                                <div></div>

                                                                            </strong></a>

                                                                    </div>

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td><td>
                                                        <table>
                                                            <tr>
                                                                <td class="imgcata">

                                                                    <img src="images/cataloghi/new/thumbs/95_12_2.jpg" id="ctl00_cphAction_dlCataloghi_ctl19_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                </td>
                                                                <td class="cellacata">
                                                                    <div id="ctl00_cphAction_dlCataloghi_ctl19_pnlLink">

                                                                        <a href="catalogueZFTransmissions5.html" target="_blank">
                                                                            <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />ZF Transmissions

                                                                            <strong>
                                                                                <div>ZF Ecolite - New Ecolite - Ecomid - New Ecomid 12/2 - 2015</div>
                                                                                <div></div>

                                                                            </strong></a>

                                                                    </div>

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    </tr><tr>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td class="imgcata">

                                                                        <img src="images/cataloghi/new/thumbs/35_4_2.jpg" id="ctl00_cphAction_dlCataloghi_ctl05_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                    </td>
                                                                    <td class="cellacata">
                                                                        <div id="ctl00_cphAction_dlCataloghi_ctl05_pnlLink">

                                                                            <a href="catalogueFulleMid.html" target="_blank">
                                                                                <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />FULLER Mid Range & Twin Splitter

                                                                                <strong>
                                                                                    <div>Updated 2015</div>
                                                                                    <div></div>

                                                                                </strong></a>

                                                                        </div>

                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td><td>
                                                        <table>
                                                            <tr>
                                                                <td class="imgcata">

                                                                    <img src="images/cataloghi/new/thumbs/88.jpg" id="ctl00_cphAction_dlCataloghi_ctl13_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                </td>
                                                                <td class="cellacata">
                                                                    <div id="ctl00_cphAction_dlCataloghi_ctl13_pnlLink">

                                                                        <a href="catalogueVolvo.html" target="_blank">
                                                                            <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />VOLVO

                                                                            <strong>
                                                                                <div>2016</div>
                                                                                <div></div>

                                                                            </strong></a>

                                                                    </div>

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td><td>
                                                        <table>
                                                            <tr>
                                                                <td class="imgcata">

                                                                    <img src="images/cataloghi/new/thumbs/cwp.jpg" id="ctl00_cphAction_dlCataloghi_ctl20_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                </td>
                                                                <td class="cellacata">
                                                                    <div id="ctl00_cphAction_dlCataloghi_ctl20_pnlLink">

                                                                        <a href="catalogueCrown.html" target="_blank">
                                                                            <img class="cellacataimg1" src="images/layout/pdf.gif" alt="pdf" />CROWN WHEELS AND PINIONS

                                                                            <strong>
                                                                                <div>04/2017</div>
                                                                                <div></div>

                                                                            </strong></a>

                                                                    </div>

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    </tr><tr>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td class="imgcata">

                                                                        <img src="images/cataloghi/new/thumbs/56.jpg" id="ctl00_cphAction_dlCataloghi_ctl06_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                    </td>
                                                                    <td class="cellacata">
                                                                        <div id="ctl00_cphAction_dlCataloghi_ctl06_pnlLink">

                                                                            <a href="catalogueMan.html" target="_blank">
                                                                                <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />MAN Differential

                                                                                <strong>
                                                                                    <div>11/2016</div>
                                                                                    <div></div>

                                                                                </strong></a>

                                                                        </div>

                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td><td>
                                                        <table>
                                                            <tr>
                                                                <td class="imgcata">

                                                                    <img src="images/cataloghi/new/thumbs/89.jpg" id="ctl00_cphAction_dlCataloghi_ctl14_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                </td>
                                                                <td class="cellacata">
                                                                    <div id="ctl00_cphAction_dlCataloghi_ctl14_pnlLink">

                                                                        <a href="catalogueVolvoCe.html" target="_blank">
                                                                            <img class="cellacataimg1" src="images/layout/pdf.gif" alt="pdf" />VOLVO CE

                                                                            <strong>
                                                                                <div>Updated 03/2018</div>
                                                                                <div></div>
                                                                                <img src="images/cataloghi/badge-earthmoving.jpg" id="ctl00_cphAction_dlCataloghi_ctl14_imgBadgeHM" />
                                                                            </strong></a>

                                                                    </div>

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td><td>
                                                        <table>
                                                            <tr>
                                                                <td class="imgcata">

                                                                    <img src="images/cataloghi/new/thumbs/gl.jpg" id="ctl00_cphAction_dlCataloghi_ctl21_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                </td>
                                                                <td class="cellacata">
                                                                    <div id="ctl00_cphAction_dlCataloghi_ctl21_pnlLink">

                                                                        <a href="catalogueGenerallist.html" target="_blank">
                                                                            <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />GENERAL LIST & ANNUAL NEWS

                                                                            <strong>
                                                                                <div> GL 2018 & AN 2017</div>
                                                                                <div></div>

                                                                            </strong></a>

                                                                    </div>

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    </tr><tr>
                                                        <td>
                                                            <table>
                                                                <tr>
                                                                    <td class="imgcata">

                                                                        <img src="images/cataloghi/new/thumbs/60_7_1.jpg" id="ctl00_cphAction_dlCataloghi_ctl07_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                    </td>
                                                                    <td class="cellacata">
                                                                        <div id="ctl00_cphAction_dlCataloghi_ctl07_pnlLink">

                                                                            <a href="catalogueMarcedesBenz1.html" target="_blank">
                                                                                <img class="cellacataimg1" src="images/layout/web.gif" alt="web" />Mercedes-Benz

                                                                                <strong>
                                                                                    <div>MB Gearboxes 7/1</div>
                                                                                    <div>03/2018</div>

                                                                                </strong></a>

                                                                        </div>

                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td><td></td><td></td>
                                                    </tr>
                                                    </table>
                                                    <br />
                                                    <h2>
                                                        Інші каталоги
                                                    </h2>
                                                    <br />
                                                    <table id="ctl00_cphAction_dlCataloghiTerra" cellspacing="0" border="0" style="width:100%;border-collapse:collapse;">
                                                        <tr>
                                                            <td>
                                                                <table>
                                                                    <tr>
                                                                        <td class="imgcata">

                                                                            <img src="images/cataloghi/new/thumbs/Detroit.jpg" id="ctl00_cphAction_dlCataloghiTerra_ctl00_imgCatalogo" alt="Immagine catalogo" style="height: 85px;" />

                                                                        </td>
                                                                        <td class="cellacata">
                                                                            <div id="ctl00_cphAction_dlCataloghiTerra_ctl00_pnlLink">

                                                                                <a href="pdf/Detroit.pdf" target="_blank">
                                                                                    <img class="cellacataimg1" src="images/layout/pdf.gif" alt="pdf" />DETROIT Axle

                                                                                    <strong>
                                                                                        <div>Updated 09/2017</div>
                                                                                        <div></div>

                                                                                    </strong></a>

                                                                            </div>

                                                                        </td>
                                                                    </tr>
                                                                </table>

                                                        </tr>
                                                    </table>






                                                </div>


                                            </div>

                                        </div>
                                    </td>

                                </tr>
                            </table>
                        </div>

                    </div>
                </div>

            </div>
        </div>

        <jsp:include page="footer.jsp"/>

    </div>
</div>


</body>

<jsp:include page="include_js.jsp"/>


</html>
