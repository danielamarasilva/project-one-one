using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;
using System.Text;

namespace SiteAutonove
{
    public class MailSender
    { 
        public void sendMail(string emailCliente, string bodyMessage, string assunto)
        {
            MailMessage objEmail = new MailMessage();

            objEmail.From = new MailAddress("xxx@clienteparasempre.com.br");//>>>>>>>>>MUDAR
            objEmail.To.Add("xxx@autonove.com.br");//>>>>>>>>>MUDAR
            objEmail.ReplyTo = new MailAddress(emailCliente);
            objEmail.Priority = MailPriority.Normal;
            objEmail.IsBodyHtml = true;
            objEmail.Subject = assunto;
            objEmail.Body = bodyMessage;

            objEmail.SubjectEncoding = Encoding.GetEncoding("ISO-8859-1");
            objEmail.BodyEncoding = Encoding.GetEncoding("ISO-8859-1");

            SmtpClient objSmtp = new SmtpClient();
            objSmtp.Host = "smtp";//>>>>>>>>>MUDAR
            objSmtp.Credentials = new NetworkCredential("login", "senha");//>>>>>>>>>MUDAR

            try
            {
                //enviando o email
                objSmtp.Send(objEmail);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                objEmail.Dispose();
            }
        } 
    }
    
}