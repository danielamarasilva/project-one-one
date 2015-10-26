using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteAutonove
{
    public partial class Financiamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                if (this.autorizacao.Checked == false)
                {
                    this.autorizacao.Value = "Não";
                }


                string bodyHtml = "<!DOCTYPE HTML>" +
                "<html>" +
                    "<head>" +
                        "<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>" +
                        "<title>Autonove Multimarcas</title>" +
                    "</head>" +
                    "<body style='width:500px; margin: 0 auto; font-family:Arial,Verdana,Sans-serif; font-size:1em;'>" +
                        "<h1>Cadastro financiamento Autonove</h1>" +
                        "<p>Abaixo, solicitação de análise de crédito:  " +
                        "</p>" +
                        "<h2 style='font-size:1.5em;'>Dados do bem</h2><hr>" +
                        "<p>" +
                                "<span style='font-weight:bold;'>Data do Contato: </span>" +
                                "<span>" + DateTime.Now + "</span>" +
                            "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Veículo: </span>" +
                            "<span>" + this.veiculo.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Ano do veículo: </span>" +
                            "<span>" + this.anoModelo.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Valor da entrada: </span>" +
                            "<span> " + this.valorEntrada.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Valor financiado: </span>" +
                            "<span> " + this.valorFinanciado.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Número de parcelas: </span>" +
                            "<span>" + this.numParcelas.SelectedItem.Text + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Vencimento da parcela: </span>" +
                            "<span>" + this.vencParcela.Text + "</span>" +
                        "</p>" +
                        "<h2 style='font-size:1.5em;'>Dados Pessoais</h2><hr>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Nome: </span>" +
                            "<span>" + this.nome.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>CPF: </span>" +
                            "<span>" + this.cpf.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Telefone: </span>" +
                            "<span>" + this.telefone.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Celular: </span>" +
                            "<span>" + this.celular.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Email: </span>" +
                            "<span>" + this.email.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Tipo de documento: </span>" +
                            "<span>" + this.tipoDoc.SelectedItem.Text + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Número do documento: </span>" +
                            "<span>" + this.numDoc.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Emissão do documento: </span>" +
                            "<span>" + this.emissaoDoc.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Órgão expedidor: </span>" +
                            "<span>" + this.orgaoExpedidor.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Data de nascimento: </span>" +
                            "<span>" + this.dataNasc.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>UF de nascimento: </span>" +
                            "<span>" + this.ufNasc.SelectedItem.Text + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Cidade de nascimento: </span>" +
                            "<span>" + this.cidadeNasc.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Nacionalidade: </span>" +
                            "<span>" + this.nacionalidade.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Sexo: </span>" +
                            "<span>" + this.sexo.SelectedValue + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Estado civil: </span>" +
                            "<span>" + this.estadoCivil.SelectedItem.Text + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Escolaridade: </span>" +
                            "<span>" + this.escolaridade.SelectedItem.Text + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Nome do pai: </span>" +
                            "<span>" + this.nomePai.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Nome da mãe: </span>" +
                            "<span>" + this.nomeMae.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Dependentes: </span>" +
                            "<span>" + this.dependentes.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Endereço: </span>" +
                            "<span>" + this.endereco.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Número: </span>" +
                            "<span>" + this.numEndereco.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Bairro: </span>" +
                            "<span>" + this.bairro.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>CEP: </span>" +
                            "<span>" + this.cep.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Estado: </span>" +
                            "<span>" + this.estado.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Cidade: </span>" +
                            "<span>" + this.cidade.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Tempo de residência: </span>" +
                            "<span>" + this.tempoRisidencia.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Tipo de residência: </span>" +
                            "<span>" + this.tipoResidencia.Value + "</span>" +
                        "</p>" +
                        "<h2 style='font-size:1.5em;'>Dados Profissionais</h2><hr>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Empresa: </span>" +
                            "<span>" + this.empresa.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>CNPJ: </span>" +
                            "<span>" + this.cnpj.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Cargo: </span>" +
                            "<span>" + this.cargo.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Data de admissão: </span>" +
                            "<span>" + this.dataAdmissao.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Tipo de comprovação: </span>" +
                            "<span>" + this.tipoComprovacao.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Renda: </span>" +
                            "<span>" + this.renda.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Endereço empresa: </span>" +
                            "<span>" + this.enderecoEmp.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Número: </span>" +
                            "<span>" + this.numEnderecoEmp.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Complemento: </span>" +
                            "<span>" + this.complementoEmp.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Bairro: </span>" +
                            "<span>" + this.bairroEmp.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Cidade: </span>" +
                            "<span>" + this.cidadeEmp.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>CEP: </span>" +
                            "<span>" + this.cepEmp.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Estado: </span>" +
                            "<span>" + this.estadoEmp.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Telefone: </span>" +
                            "<span>" + this.telefoneEmp.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Ramal: </span>" +
                            "<span>" + this.ramal.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Emprego anterior: </span>" +
                            "<span>" + this.empregoAnterior.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Telefone: </span>" +
                            "<span>" + this.telefoneEmpAnterior.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Tempo de empresa: </span>" +
                            "<span>" + this.tempoEmpresa.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Outras rendas: </span>" +
                            "<span>" + this.outrasRendas.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Descrição das outras rendas: </span>" +
                            "<span>" + this.descOutrasRendas.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Número do benefício: </span>" +
                            "<span>" + this.numBeneficio.Value + "</span>" +
                        "</p>" +
                        "<h2 style='font-size:1.5em;'>Referências Bancárias e de Crédito</h2><hr>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Banco: </span>" +
                            "<span>" + this.bancoUm.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Agência: </span>" +
                            "<span>" + this.agenciaUm.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Conta: </span>" +
                            "<span>" + this.contaUm.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Tempo de conta: </span>" +
                            "<span>" + this.tempoContaUm.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Limite de cheque especial: </span>" +
                            "<span>" + this.limiteChequeUm.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Banco: </span>" +
                            "<span>" + this.bancoDois.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Agência: </span>" +
                            "<span>" + this.agenciaDois.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Conta: </span>" +
                            "<span>" + this.contaDois.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Veículo: </span>" +
                            "<span>" + this.tempoContaDois.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Limite de cheque especial: </span>" +
                            "<span>" + this.limiteChequeDois.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Tipo de cartão: </span>" +
                            "<span>" + this.tipoCartao.SelectedItem.Text + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Operadora: </span>" +
                            "<span>" + this.operadora.SelectedItem.Text + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Observação: </span>" +
                            "<span>" + this.observacao.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Limite de cartão: </span>" +
                            "<span>" + this.limiteCartao.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Já financiou outro veículo? </span>" +
                            "<span>" + this.jaFinanciou.SelectedItem.Text + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Financeira: </span>" +
                            "<span>" + this.financeira.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Situação: </span>" +
                            "<span>" + this.situacao.SelectedItem.Text + "</span>" +
                        "</p>" +
                        "<h2 style='font-size:1.5em;'>Lista de Bens</h2><hr>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Tipo de bem: </span>" +
                            "<span>" + this.tipoBemUm.SelectedItem.Text + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Descrição do bem: </span>" +
                            "<span>" + this.descricaoBemUm.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Valor do bem: </span>" +
                            "<span>" + this.valorBemUm.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Tipo do bem: </span>" +
                            "<span>" + this.tipoBemDois.SelectedItem.Text + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Descrição do bem: </span>" +
                            "<span>" + this.descricaoBemDois.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Valor do bem: </span>" +
                            "<span>" + this.valorBemDois.Value + "</span>" +
                        "</p>" +
                        "<p>" +
                            "<span style='font-weight:bold;'>Autorizo o envio de informações a respeito da proposta de crédito: </span>" +
                            "<span>" + this.autorizacao.Value + "</span>" +
                        "</p><br /><br />" +
                        "<p>" +
                                "Atenciosamente,<br />" +
                                "Concessionária Autonove" +
                            "</p>" +
                    "</body>" +
                "</html>";

                //Enviando Email
                MailSender mailSender = new MailSender();
                mailSender.sendMail(this.email.Value, bodyHtml, "Contato seção Financiamento");

                this.BtnEnviar.Enabled = false;

                this.LiteralMessage.Text = "<div class='alert alert-success'>" +
                                             "<h3>Obrigado pelo contato " + this.nome.Value + "!</h3><br>" +
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