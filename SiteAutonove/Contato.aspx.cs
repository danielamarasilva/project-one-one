using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteAutonove
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                string bodyHtml = "<!DOCTYPE HTML>" +
                "<html>" +
                    "<head>" +
                        "<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>" +
                        "<title>Autonove Multimarcas</title>" +
                    "</head>" +
                    "<body style='width:500px; margin: 0 auto; font-family:Arial,Verdana,Sans-serif; font-size:1em;'>" +
                        "<h1>Fale Conosco Autonove</h1>" +
                        "<p>A concessionária Autonove recebeu um contato de fale conosco, confira abaixo:  " +
                        "</p>" +
                        "<p>" +
                                "<span style='font-weight:bold;'>Data do Contato: </span>" +
                                "<span>" + DateTime.Now + "</span>" +
                            "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Nome: </span>" +
                            "<span>" + this.fname.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Email: </span>" +
                            "<span>" + this.email.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Telefone: </span>" +
                            "<span>" + this.phone.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>mensagem: </span>" +
                            "<span>" + this.comments.Value + "</span>" +
                        "</p>" +
                            "<p>" +
                                "Atenciosamente,<br />" +
                                "Concessionária Autonove" +
                            "</p>" +
                        "</body>" +
                "</html>";

                //Email
                MailSender mailSender = new MailSender();
                mailSender.sendMail(this.email.Value, bodyHtml, "Contato seção Fale Conosco");

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