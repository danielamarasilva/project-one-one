<%@ Page Title="" Language="C#" MasterPageFile="~/Pages.Master" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="SiteAutonove.Detalhes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start Body Content -->
    <div class="main" role="main">
        <div id="content" class="content full">
            <div class="container">
                <!-- Vehicle Details -->
                <article class="single-vehicle-details">
                    <div class="single-vehicle-title">
                        <h2>
                            <asp:Label ID="LabelTitle" runat="server" class="post-title"></asp:Label></h2>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="single-listing-images">
                                <div class="featured-image format-image">
                                    <asp:HyperLink ID="LinkImagePrincipal" runat="server" data-rel="prettyPhoto[gallery]" class="media-box">
                                        <asp:Image ID="ImagePrinciapl" runat="server" />
                                    </asp:HyperLink>
                                </div>
                                <div class="additional-images" id="divImageAdditional" runat="server">
                                    <ul id="ulAdditionalImage" runat="server" class="owl-carousel" data-columns="4" data-pagination="no" data-arrows="yes"
                                        data-single-item="no" data-items-desktop="4" data-items-desktop-small="4" data-items-tablet="3" data-items-mobile="3">
                                        <asp:Literal ID="LiteralAdditionalImages" runat="server"></asp:Literal>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <br />
                            <br />
                            <asp:Label ID="LabelPreco" runat="server" CssClass="text-preco-destaque"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <div class="sidebar-widget widget">
                                <div class="sidebar-widget widget seller-contact-widget">
                                    <h4 class="widgettitle">Tenho Interesse</h4>
                                    <div class="vehicle-enquiry-in">
                                        <asp:TextBox ID="TxtName" runat="server" placeholder="Nome*" class="form-control"></asp:TextBox>&nbsp;
                                        <div class="row">
                                            <div class="col-md-7">
                                                <asp:TextBox ID="TxtPhone" runat="server" placeholder="Telefone*" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-5">
                                                <asp:TextBox ID="TxtEmail" runat="server" placeholder="Email*" class="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <asp:Button ID="BtnEnviar" runat="server" Text="Enviar" class="btn btn-primary" 
                                            OnClick="BtnEnviar_Click" ValidationGroup="Enviar" />
                                    </div>
                                    <div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Informe o nome"
                                                ControlToValidate="TxtName" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Informe o telefone"
                                                ControlToValidate="TxtPhone" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Informe o email"
                                                ControlToValidate="TxtEmail" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="spacer-50"></div>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="tabs vehicle-details-tabs">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#vehicle-overview">Detalhes</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div id="vehicle-overview" class="tab-pane fade in active">
                                        <span class="text-negrito">Veículo: </span>
                                        <asp:Label ID="LabelMarca" runat="server"></asp:Label>
                                        <asp:Label ID="LabelModelo" runat="server"></asp:Label><br />
                                        <span class="text-negrito">Versão: </span>
                                        <asp:Label ID="LabelVersao" runat="server"></asp:Label>
                                        <asp:Label ID="LabelAnoFabricacao" runat="server"></asp:Label>/
                                        <asp:Label ID="LabelAnoModelo" runat="server"></asp:Label><br />
                                        <span class="text-negrito">Transmissão: </span>
                                        <asp:Label ID="LabelTransmissao" runat="server"></asp:Label><br />
                                        <span class="text-negrito">Cor: </span>
                                        <asp:Label ID="LabelCor" runat="server"></asp:Label><br />
                                        <span class="text-negrito">Combustível: </span>
                                        <asp:Label ID="LabelCombustivel" runat="server"></asp:Label><br />
                                        <span class="text-negrito">Opcionais: </span>
                                        <asp:Label ID="LabelOpcionais" runat="server"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="spacer-50"></div>
                        </div>
                    </div>
                </article>
                <div class="clearfix"></div>
                <div id="message"></div>
                <asp:Literal ID="LiteralMessage" runat="server"></asp:Literal>
            </div>
        </div>
    </div>
    <!-- End Body Content -->
</asp:Content>
