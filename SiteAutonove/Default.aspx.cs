using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteAutonove
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                XmlManagement xmlManagement = new XmlManagement();
                List<Veiculo> veiculos = xmlManagement.GetVeiculos();

                this.RepeaterEstoque.DataSource = veiculos;
                this.RepeaterEstoque.DataBind();
            }
        }

        protected void RepeaterEstoque_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Veiculo veiculo = (Veiculo)e.Item.DataItem;

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                HyperLink linkEstoque = (HyperLink)e.Item.FindControl("linkEstoque");
                linkEstoque.NavigateUrl = "Detalhes.aspx?veic=" + veiculo.Id;

                Image imageVeiculo = (Image)e.Item.FindControl("imageVeiculo");
                imageVeiculo.ImageUrl = veiculo.Fotos[0];
                imageVeiculo.AlternateText = veiculo.Modelo;

                Label lblVeiculo = (Label)e.Item.FindControl("lblVeiculo");
                lblVeiculo.Text = veiculo.Marca + " " + veiculo.Modelo;

                Label lblPreco = (Label)e.Item.FindControl("lblPreco");
                lblPreco.Text = veiculo.Valor.ToString("c");

                Label lblDescricao = (Label)e.Item.FindControl("lblDescricao");
                lblDescricao.Text = veiculo.Versao + " " + veiculo.AnoFabricacao + "/" + veiculo.AnoModelo;

                Button BtnDetalhar = (Button)e.Item.FindControl("BtnDetalhar");
                BtnDetalhar.CommandArgument = veiculo.Id.ToString();
            }
        }

        protected void RepeaterEstoque_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                Response.Redirect("Detalhes.aspx?veic=" + e.CommandArgument, false);
            }
            catch (Exception)
            {
                Response.Redirect("Erro.aspx", false);
            }
        }
    }
}