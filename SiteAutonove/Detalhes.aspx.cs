using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteAutonove
{
    public partial class Detalhes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string veiculoId = Request.QueryString["veic"];

                XmlManagement xmlManagement = new XmlManagement();
                Veiculo veiculo = xmlManagement.Get(veiculoId);

                this.LabelTitle.Text = veiculo.Marca + " " + veiculo.Modelo + " " + veiculo.Versao;
                this.LinkImagePrincipal.NavigateUrl = veiculo.Fotos[0];
                this.ImagePrinciapl.ImageUrl = veiculo.Fotos[0];

                for (int i = 0; i < veiculo.Fotos.Count; i++)
                {
                    this.LiteralAdditionalImages.Text += 
                     "<li class='item format-image'>" +
                         "<a href='" + veiculo.Fotos[i] + "'" + "data-rel='prettyPhoto[gallery]' class='media-box'>" +
                            "<img src='" + veiculo.Fotos[i] + "'" + " />" +
                         "</a>" +
                     "</li>";
                }

                this.LabelPreco.Text = veiculo.Valor.ToString("c");
                this.LabelMarca.Text = veiculo.Marca;
                this.LabelModelo.Text = veiculo.Modelo;
                this.LabelAnoFabricacao.Text = veiculo.AnoFabricacao;
                this.LabelAnoModelo.Text = veiculo.AnoModelo;
                this.LabelVersao.Text = veiculo.Versao;
                this.LabelTransmissao.Text = veiculo.Transmissao;
                this.LabelCor.Text = veiculo.Cor;
                this.LabelCombustivel.Text = veiculo.Combustivel;
                this.LabelOpcionais.Text = veiculo.Opcionais;
            }
        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                string veiculoId = Request.QueryString["veic"];

                XmlManagement xmlManagement = new XmlManagement();
                Veiculo veiculo = xmlManagement.Get(veiculoId);

                string bodyHtml = "<!DOCTYPE HTML>" +
                "<html>" +
                    "<head>" +
                        "<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>" +
                        "<title>Autonove Multimarcas</title>" +
                    "</head>" +
                    "<body style='width:500px; margin: 0 auto; font-family:Arial,Verdana,Sans-serif; font-size:1em;'>" +
                        "<h2 style='font-size:1.5em;'>Interesse em veículo: " + veiculo.Marca + " " + veiculo.Modelo + "</h2>" +
                            "<p> A concessionária Autonove recebeu um contato de: </p>" +
                            "<p>" +
                                "<span style='font-weight:bold;'>Nome: </span>" +
                                "<span>" + this.TxtName.Text + "</span>" +
                            "</p>" +
                            "<p>" +
                                "<span style='font-weight:bold;'>Telefone: </span>" +
                                "<span>" + this.TxtPhone.Text + "</span>" +
                            "</p>" +
                            "<p>" +
                                "<span style='font-weight:bold;'>Email: </span>" +
                                "<span>" + this.TxtEmail.Text + "</span>" +
                            "</p>" +
                            "<p>" +
                                "<span style='font-weight:bold;'>Data do Contato: </span>" +
                                "<span>" + DateTime.Now + "</span>" +
                            "</p><br />" +
                            "<p>Sobre veículo: </p>" +
                            "<p>" +
                                "<span style='font-weight:bold;'>Veículo: </span>" +
                                "<span>" + veiculo.Marca + " " + veiculo.Modelo + " " + veiculo.AnoFabricacao + "/" + veiculo.AnoModelo + "</span>" +
                            "</p>" +
                            "<p>" +
                                "<span style='font-weight:bold;'>Placa: </span>" +
                                "<span>" + veiculo.Placa + "</span>" +
                            "</p>" +
                            "<p>" +
                                "<span style='font-weight:bold;'>Chassi: </span>" +
                                "<span>" + veiculo.Chassi + "</span>" +
                            "</p>" +
                            "<p>" +
                                "<span style='font-weight:bold;'>Valor: </span>" +
                                "<span>" + veiculo.Valor + "</span>" +
                            "</p><br />" +
                            "<p>" +
                                "Atenciosamente,<br />" +
                                "Concessionária Autonove" +
                            "</p>" +
                        "</body>" +
                "</html>";

                //Enviar email
                MailSender mailSender = new MailSender();
                mailSender.sendMail(this.TxtEmail.Text, bodyHtml, "Interesse em Veículo " + veiculo.Marca + " " + veiculo.Modelo);

                this.BtnEnviar.Enabled = false;

                this.LiteralMessage.Text = "<div class='alert alert-success'>" +
	                                         "<h3>Obrigado pelo contato!</h3><br>" +
	                                         "<p>Aguarde retorno de nossa equipe.</p>" +
	                                         "</div>";
            }
            catch (Exception)
            {
                this.LiteralMessage.Text = "<div class='alert alert-error'>" +
                                             "<h3>Não foi possível enviar seu contato!</h3><br>" +
                                             "<p>Tente novamente mais tarde</p>" +
                                             "</div>";
            }
        }
    }
}