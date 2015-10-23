<%@ Page Title="" Language="C#" MasterPageFile="~/Pages.Master" AutoEventWireup="true"
    CodeBehind="Estoque.aspx.cs" Inherits="SiteAutonove.Estoque" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- Start Body Content -->
    <div class="main" role="main">
        <div id="content" class="content full">
            <div class="container">
                <div class="row">
                    <h2>Estoque Autonove</h2>
                    <div class="sort-destination gallery-grid" data-sort-id="gallery">
                        <asp:Repeater ID="RepeaterEstoque" runat="server" OnItemDataBound="RepeaterEstoque_ItemDataBound"
                            OnItemCommand="RepeaterEstoque_ItemCommand">
                            <ItemTemplate>
                                <div class="col-md-3 col-sm-4 grid-item format-image images">
                                    <div class="grid-item-inner">
                                        <asp:HyperLink ID="linkEstoque" runat="server" >
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
                                            <asp:Button ID="BtnDetalhar" runat="server" Text="Detalhes" class="btn btn-primary" />
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Body Content -->
</asp:Content>
