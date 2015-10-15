using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteAutonove
{
    public partial class Estoque : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                XmlManagement xmlManagement = new XmlManagement();
                List<Veiculo> veiculos = xmlManagement.GetVeiculos();

                this.RepeaterEstoque.DataSource = veiculos;
                this.RepeaterEstoque.DataBind();
            }
        }

        protected void RepeaterEstoque_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            // Objeto com dados do carro a partir item do repeater
            Veiculo veiculo = (Veiculo)e.Item.DataItem;

            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image imageVeiculo = (Image)e.Item.FindControl("imageVeiculo");
                imageVeiculo.ImageUrl = veiculo.Fotos[0];
                imageVeiculo.AlternateText = veiculo.Modelo;

                Label lblMarca = (Label)e.Item.FindControl("lblMarca");
                lblMarca.Text = veiculo.Marca;

                Label lblModelo = (Label)e.Item.FindControl("lblModelo");
                lblModelo.Text = veiculo.Modelo;

                Label lblCor = (Label)e.Item.FindControl("lblCor");
                lblCor.Text = veiculo.Cor;

                Label lblVersao = (Label)e.Item.FindControl("lblVersao");
                lblVersao.Text = veiculo.Versao;

                Label lblAnoFabricacao = (Label)e.Item.FindControl("lblAnoFabricacao");
                lblAnoFabricacao.Text = veiculo.AnoFabricacao;

                Label lblAnoModelo = (Label)e.Item.FindControl("lblAnoModelo");
                lblAnoModelo.Text = veiculo.AnoModelo;

                //Button buttonInteresse = (Button)e.Item.FindControl("ButtonInteresse");
                //buttonInteresse.CommandArgument = versaoDC.Id.ToString();
            }
        }

        protected void RepeaterEstoque_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                Response.Redirect("InteresseNovos.aspx?verId=" + e.CommandArgument, false);
            }
            catch (Exception ex)
            {
                Response.Redirect("Erro.aspx", false);
            }
        }
    }
}