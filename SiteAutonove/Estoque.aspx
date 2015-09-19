<%@ Page Title="" Language="C#" MasterPageFile="~/Pages.Master" AutoEventWireup="true"
    CodeBehind="Estoque.aspx.cs" Inherits="SiteAutonove.Estoque" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="RepeaterEstoque" runat="server" OnItemDataBound="RepeaterEstoque_ItemDataBound"
        OnItemCommand="RepeaterEstoque_ItemCommand">
        <ItemTemplate>
            <asp:Image ID="imageVeiculo" runat="server" /><br />
            <asp:Label ID="lblMarca" runat="server"></asp:Label><br />
            <asp:Label ID="lblModelo" runat="server"></asp:Label><br />
            <asp:Label ID="lblCor" runat="server"></asp:Label><br />
            <asp:Label ID="lblVersao" runat="server"></asp:Label><br />
            <asp:Label ID="lblAnoFabricacao" runat="server"></asp:Label><br />
            <asp:Label ID="lblAnoModelo" runat="server"></asp:Label><br />
            <br />
            <br />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
