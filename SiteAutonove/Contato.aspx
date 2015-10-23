<%@ Page Title="" Language="C#" MasterPageFile="~/Pages.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="SiteAutonove.Contato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header parallax">
            <div id="contact-map" style="width:100%;height:300px"></div>
        </div>
        <!-- Utiity Bar -->
        <div class="utility-bar">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-8">
                    </div>
                    <div class="col-md-8 col-sm-6 col-xs-4">
                        <ul class="utility-icons social-icons social-icons-colored">
                            <li class="facebook"><a href="https://www.facebook.com/autonove" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li class="twitter"><a href="https://twitter.com/autonove" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <li class="googleplus"><a href="https://plus.google.com/105175365601776402969/about" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                            <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Start Body Content -->
        <div class="main" role="main">
            <div id="content" class="content full">
                <div class="container">
                    <div class="listing-header margin-40">
                        <h2>Fale Conosco</h2>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-sm-4">
                            <i class="fa fa-home"></i></span> <b>Autonove Multimarcas</b>
                            <br> Av. Engenheiro Caetano Alvares, 4099
                            <br> Imirim - São Paulo - SP
                            <br>
                            <br>
                            <i class="fa fa-phone"></i> <b>(11) 2208-7094 </b>
                            <br>
                            <i class="fa fa-phone"></i> <b>(11) 3856-9247 </b>
                            <br>
                            <i class="fa fa-envelope"></i> <a href="mailto:vendas@autonove.com.br">vendas@autonove.com.br</a>
                            <br>
                            <br>
                            <i class="fa fa-home"></i> <b>Seg - Sex: 9:00h - 18:00h</b>
                            <br> Sábados: 9:00h - 13:00h
                        </div>
                        <div class="col-md-9 col-sm-8">
                            <form method="post" id="contactform" name="contactform" class="contact-form clearfix" action="mail/contact.php">
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <input type="text" id="fname" name="First Name" class="form-control input-lg" placeholder="Primeiro Nome*">
                                        </div>
                                        <div class="form-group">
                                            <input type="email" id="lname" name="Last Name" class="form-control input-lg" placeholder="Último Nome">
                                        </div>
                                        <div class="form-group">
                                            <input type="email" id="email" name="email" class="form-control input-lg" placeholder="Email*">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" id="phone" name="phone" class="form-control input-lg" placeholder="Telefone">
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="form-group">
                                            <textarea cols="6" rows="8" id="comments" name="comments" class="form-control input-lg" placeholder="Mensagem"></textarea>
                                        </div>
                                        <input id="submit" name="submit" type="submit" class="btn btn-primary btn-lg pull-right" value="Enviar">
                                    </div>
                                </div>
                            </form>
                            <div class="clearfix"></div>
                            <div id="message"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Body Content -->

    <script type="text/javascript">
        var geocoder = new google.maps.Geocoder();
        var address = "Av. Engenheiro Caetano Alvares, 4099 Imirim - São Paulo - SP"; //Add your address here, all on one line.
        var latitude;
        var longitude;
        var color = "#ffffff"; //Set your tint color. Needs to be a hex value.

        function getGeocode() {
            geocoder.geocode({
                'address': address
            }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    latitude = results[0].geometry.location.lat();
                    longitude = results[0].geometry.location.lng();
                    initGoogleMap();
                }
            });
        }

        function initGoogleMap() {
            var styles = [
                {
                    stylers: [
                        {
                            saturation: -100
                        }
                    ]
                }
            ];

            var options = {
                mapTypeControlOptions: {
                    mapTypeIds: ['Styled']
                },
                center: new google.maps.LatLng(latitude, longitude),
                zoom: 13,
                scrollwheel: false,
                navigationControl: false,
                mapTypeControl: false,
                zoomControl: true,
                disableDefaultUI: true,
                mapTypeId: 'Styled'
            };
            var div = document.getElementById('contact-map');
            var map = new google.maps.Map(div, options);
            marker = new google.maps.Marker({
                map: map,
                draggable: false,
                animation: google.maps.Animation.DROP,
                position: new google.maps.LatLng(latitude, longitude)
            });
            var styledMapType = new google.maps.StyledMapType(styles, {
                name: 'Styled'
            });
            map.mapTypes.set('Styled', styledMapType);

            var infowindow = new google.maps.InfoWindow({
                content: "<div class='iwContent'>" + address + "</div>"
            });
            google.maps.event.addListener(marker, 'click', function () {
                infowindow.open(map, marker);
            });


            bounds = new google.maps.LatLngBounds(
                new google.maps.LatLng(-23.487961, -46.648465),
                new google.maps.LatLng(23.487961, 46.648465));

            rect = new google.maps.Rectangle({
                bounds: bounds,
                fillColor: color,
                fillOpacity: 0.2,
                strokeWeight: 0,
                map: map
            });
        }
        google.maps.event.addDomListener(window, 'load', getGeocode);
    </script>
</asp:Content>
