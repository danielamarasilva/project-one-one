<%@ Page Title="" Language="C#" MasterPageFile="~/Pages.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="SiteAutonove.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero-area">
        <!-- Start Hero Slider -->
        <div class="hero-slider heroflex flexslider clearfix" data-autoplay="yes" data-pagination="no"
            data-arrows="yes" data-style="fade" data-speed="7000" data-pause="yes">
            <ul class="slides">
                <li class="parallax" style="background-image: url(images/loja1.jpg);"></li>
                <li class="parallax" style="background-image: url(images/1.jpg);"></li>
            </ul>
        </div>
        <!-- End Hero Slider -->
    </div>
    <!-- Utiity Bar -->
    <div class="utility-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-8">
                </div>
                <div class="col-md-8 col-sm-6 col-xs-4">
                    <ul class="utility-icons social-icons social-icons-colored">
                        <li class="facebook"><a href="https://www.facebook.com/autonove" target="_blank"><i
                            class="fa fa-facebook"></i></a></li>
                        <li class="twitter"><a href="https://twitter.com/autonove" target="_blank"><i class="fa fa-twitter">
                        </i></a></li>
                        <li class="googleplus"><a href="https://plus.google.com/105175365601776402969/about"
                            target="_blank"><i class="fa fa-google-plus"></i></a></li>
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
                <div class="row">
                    <div class="sort-destination gallery-grid" data-sort-id="gallery">
                        <asp:Repeater ID="RepeaterEstoque" runat="server" OnItemDataBound="RepeaterEstoque_ItemDataBound"
                            OnItemCommand="RepeaterEstoque_ItemCommand">
                            <ItemTemplate>
                                <div class="col-md-3 col-sm-4 grid-item format-image images">
                                    <div class="grid-item-inner">
                                        <asp:HyperLink ID="linkEstoque" runat="server" data-rel="prettyPhoto" class="media-box">
                                            <asp:Image ID="imageVeiculo" runat="server" />
                                        </asp:HyperLink>
                                        <div class="grid-content">
                                            <h3 class="post-title">
                                                <asp:Label ID="lblVeiculo" runat="server"></asp:Label>
                                            </h3>
                                            <h4>
                                                <asp:Label ID="lblPreco" runat="server"></asp:Label>
                                            </h4>
                                            <p>
                                                <asp:Label ID="lblDescricao" runat="server"></asp:Label><br />
                                                <asp:Label ID="lblDetalhes" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <!-- Pagination -->
                <ul class="pager pull-right">
                    <li><a href="#">&larr; Older</a></li>
                    <li><a href="#">Newer &rarr;</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- End Body Content -->
</asp:Content>
