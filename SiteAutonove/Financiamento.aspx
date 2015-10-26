<%@ Page Title="" Language="C#" MasterPageFile="~/Pages.Master" AutoEventWireup="true" CodeBehind="Financiamento.aspx.cs" Inherits="SiteAutonove.Financiamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start Hero Slider -->
    <div class="hero-area">
        <div class="hero-slider heroflex flexslider clearfix" data-autoplay="yes" data-pagination="no" data-arrows="yes" data-style="fade" data-speed="7000" data-pause="yes">
            <ul class="slides">
                <li class="parallax" style="background-image: url(images/loja3.jpg);"></li>
                <li class="parallax" style="background-image: url(images/loja1.jpg);"></li>
                <li class="parallax" style="background-image: url(images/loja4.jpg);"></li>
            </ul>
        </div>
    </div>
    <!-- End Hero Slider -->
    <!-- Utiity Bar -->
    <div class="utility-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-8">
                </div>
                <div class="col-md-8 col-sm-6 col-xs-4">
                    <ul class="utility-icons social-icons social-icons-colored">
                        <li class="facebook"><a href="https://www.facebook.com/autonove" target="_blank"><i class="fa fa-facebook"></i></a></li>
                        <li class="twitter"><a href="https://twitter.com/autonove" target="_blank"><i class="fa fa-twitter"></i></a></li>
                        <li class="googleplus"><a href="https://plus.google.com/105175365601776402969/about" target="_blank"><i class="fa fa-google-plus"></i></a></li>
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
                <div class="clearfix"></div>
                <asp:Literal ID="LiteralMessage" runat="server"></asp:Literal>
                <div id="message"></div>
                <div class="listing-header margin-40">
                    <h2>Ficha de Cadastro - Financiamento</h2>
                </div>
                <p>Por favor, forneça todas as informações corretamente, somente assim a análise de crédito poderá ser feita pela instituição financeira.</p>
                <div class="row">
                    <div class="col-md-3 col-sm-4">
                    </div>
                    <div class="col-md-9 col-sm-8">
                        <form id="formFinanciamento" name="formFinanciamento" class="contact-form clearfix">
                            <div class="row">
                                <div class="col-md-7">
                                    <h4>Descrição do bem</h4>
                                    <hr />
                                    <div class="form-group">
                                        Veículo: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="veiculo" name="veiculo" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        Ano/Modelo: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="anoModelo" name="anoModelo" class="form-control input-lg" maxlength="4">
                                    </div>
                                    <div class="form-group">
                                        Valor Entrada: <span class="required-itens">*</span><span class="texto-regex-expl">Ex: 1100,50</span>
                                        <input runat="server" type="text" id="valorEntrada" name="valorEntrada" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        Valor Financiado: <span class="required-itens">*</span><span class="texto-regex-expl">Ex: 1100,50</span>
                                        <input runat="server" type="text" id="valorFinanciado" name="valorFinanciado" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        Número de Parcelas: <span class="required-itens">*</span>
                                        <asp:DropDownList ID="numParcelas" runat="server" CssClass="form-control input-lg">
                                            <asp:ListItem Value="0" Text="">Escolha</asp:ListItem>
                                            <asp:ListItem Value="1" Text="6 meses">6 meses</asp:ListItem>
                                            <asp:ListItem Value="2" Text="12 meses">12 meses</asp:ListItem>
                                            <asp:ListItem Value="3" Text="18 meses">18 meses</asp:ListItem>
                                            <asp:ListItem Value="1" Text="24 meses">24 meses</asp:ListItem>
                                            <asp:ListItem Value="2" Text="30 meses">30 meses</asp:ListItem>
                                            <asp:ListItem Value="3" Text="36 meses">36 meses</asp:ListItem>
                                            <asp:ListItem Value="1" Text="48 meses">48 meses</asp:ListItem>
                                            <asp:ListItem Value="2" Text="60 meses">60 meses</asp:ListItem>
                                            <asp:ListItem Value="3" Text="72 meses">72 meses</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        Vencto 1 Parcela: <span class="required-itens">*</span><span class="texto-regex-expl">Ex: 01/01/1900</span>
                                        <asp:TextBox ID="vencParcela" runat="server" class="form-control input-lg" MaxLength="10"></asp:TextBox>
                                    </div>
                                    <h4>Dados Pessoais</h4>
                                    <hr />
                                    <div class="form-group">
                                        Nome Completo: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="nome" name="nome" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        CPF: <span class="required-itens">*</span><span class="texto-regex-expl">Ex: 999.999.999-99</span>
                                        <input runat="server" type="text" id="cpf" name="cpf" class="form-control input-lg" maxlength="14" />
                                    </div>
                                    <div class="form-group">
                                        Telefone: <span class="required-itens">*</span><span class="texto-regex-expl">Ex: (99)9999-9999</span>
                                        <input runat="server" type="text" id="telefone" name="telefone" class="form-control input-lg" maxlength="14" />
                                    </div>
                                    <div class="form-group">
                                        Celular:<span class="texto-regex-expl">Ex: (99)9999-9999</span>
                                        <input runat="server" type="text" id="celular" name="celular" class="form-control input-lg" maxlength="14" />
                                    </div>
                                    <div class="form-group">
                                        Email: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="email" name="email" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Tipo de documento <span class="required-itens">*</span>
                                        <asp:DropDownList ID="tipoDoc" runat="server" CssClass="form-control input-lg">
                                            <asp:ListItem Value="0" Text="">Escolha</asp:ListItem>
                                            <asp:ListItem Value="1" Text="RG">RG</asp:ListItem>
                                            <asp:ListItem Value="2" Text="RNE">RNE</asp:ListItem>
                                            <asp:ListItem Value="3" Text="CNH">CNH</asp:ListItem>
                                            <asp:ListItem Value="4" Text="RIC">RIC</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        Número do documento: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="numDoc" name="numDoc" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Emissão do documento: <span class="required-itens">*</span><span class="texto-regex-expl">Ex: 01/01/1900</span>
                                        <input runat="server" type="text" id="emissaoDoc" name="emissaoDoc" class="form-control input-lg" maxlength="10" />
                                    </div>
                                    <div class="form-group">
                                        Órgão Expedidor: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="orgaoExpedidor" name="orgaoExpedidor" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Data de nascimento: <span class="required-itens">*</span><span class="texto-regex-expl">Ex: 01/01/1900</span>
                                        <input runat="server" type="text" id="dataNasc" name="dataNasc" class="form-control input-lg" maxlength="10" />
                                    </div>
                                    <div class="form-group">
                                        UF de nascimento: <span class="required-itens">*</span>
                                        <asp:DropDownList ID="ufNasc" runat="server" CssClass="form-control input-lg">
                                            <asp:ListItem Value="0" Text="">Escolha</asp:ListItem>
                                            <asp:ListItem Value="1" Text="AC">AC</asp:ListItem>
                                            <asp:ListItem Value="2" Text="AL">AL</asp:ListItem>
                                            <asp:ListItem Value="3" Text="AP">AP</asp:ListItem>
                                            <asp:ListItem Value="4" Text="AM">AM</asp:ListItem>
                                            <asp:ListItem Value="5" Text="BA">BA</asp:ListItem>
                                            <asp:ListItem Value="6" Text="CE">CE</asp:ListItem>
                                            <asp:ListItem Value="7" Text="DF">DF</asp:ListItem>
                                            <asp:ListItem Value="8" Text="ES">ES</asp:ListItem>
                                            <asp:ListItem Value="9" Text="GO">GO</asp:ListItem>
                                            <asp:ListItem Value="10" Text="MA">MA</asp:ListItem>
                                            <asp:ListItem Value="11" Text="MT">MT</asp:ListItem>
                                            <asp:ListItem Value="12" Text="MS">MS</asp:ListItem>
                                            <asp:ListItem Value="13" Text="MG">MG</asp:ListItem>
                                            <asp:ListItem Value="14" Text="PA">PA</asp:ListItem>
                                            <asp:ListItem Value="15" Text="PB">PB</asp:ListItem>
                                            <asp:ListItem Value="16" Text="PR">PR</asp:ListItem>
                                            <asp:ListItem Value="17" Text="PE">PE</asp:ListItem>
                                            <asp:ListItem Value="18" Text="PI">PI</asp:ListItem>
                                            <asp:ListItem Value="19" Text="RJ">RJ</asp:ListItem>
                                            <asp:ListItem Value="20" Text="RN">RN</asp:ListItem>
                                            <asp:ListItem Value="21" Text="RS">RS</asp:ListItem>
                                            <asp:ListItem Value="22" Text="RO">RO</asp:ListItem>
                                            <asp:ListItem Value="23" Text="RR">RR</asp:ListItem>
                                            <asp:ListItem Value="24" Text="SC">SC</asp:ListItem>
                                            <asp:ListItem Value="25" Text="SP">SP</asp:ListItem>
                                            <asp:ListItem Value="26" Text="SE">SE</asp:ListItem>
                                            <asp:ListItem Value="27" Text="TO">TO</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        Cidade de nascimento: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="cidadeNasc" name="cidadeNasc" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Nacionalidade: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="nacionalidade" name="nacionalidade" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Sexo: <span class="required-itens">*</span><br />
                                        <asp:RadioButtonList ID="sexo" runat="server">
                                            <asp:ListItem Value="Feminino" Text="Feminino">Feminino</asp:ListItem>
                                            <asp:ListItem Value="Masculino" Text="Masculino">Masculino</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                    <div class="form-group">
                                        Estado civil: <span class="required-itens">*</span>
                                        <asp:DropDownList ID="estadoCivil" runat="server" CssClass="form-control input-lg">
                                            <asp:ListItem Value="0" Text="">Escolha</asp:ListItem>
                                            <asp:ListItem Value="1" Text="Solteiro(a)">Solteiro(a)</asp:ListItem>
                                            <asp:ListItem Value="2" Text="Casado(a)">Casado(a)</asp:ListItem>
                                            <asp:ListItem Value="3" Text="União Estável">União Estável</asp:ListItem>
                                            <asp:ListItem Value="4" Text="Divorciado(a)">Divorciad(a)</asp:ListItem>
                                            <asp:ListItem Value="5" Text="Viúvo(a)">Viúvo(a)</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        Escolaridade: <span class="required-itens">*</span>
                                        <asp:DropDownList ID="escolaridade" runat="server" CssClass="form-control input-lg">
                                            <asp:ListItem Value="0" Text="">Escolha</asp:ListItem>
                                            <asp:ListItem Value="1" Text="Primeiro Grau">Primeiro Grau</asp:ListItem>
                                            <asp:ListItem Value="2" Text="Segundo Grau">Segundo Grau</asp:ListItem>
                                            <asp:ListItem Value="3" Text="Superior">Superior</asp:ListItem>
                                            <asp:ListItem Value="3" Text="Pós Graduação">Pós Graduação</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        Nome do Pai: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="nomePai" name="nomePai" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Nome da mãe: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="nomeMae" name="nomeMae" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Dependentes:
                                            <input runat="server" type="text" id="dependentes" name="dependentes" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Endereço:
                                            <input runat="server" type="text" id="endereco" name="endereco" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Número:
                                            <input runat="server" type="text" id="numEndereco" name="numEndereco" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Bairro:
                                            <input runat="server" type="text" id="bairro" name="bairro" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        CEP:
                                            <input runat="server" type="text" id="cep" name="cep" class="form-control input-lg" maxlength="9" />
                                    </div>
                                    <div class="form-group">
                                        Estado:
                                            <input runat="server" type="text" id="estado" name="estado" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Cidade:
                                            <input runat="server" type="text" id="cidade" name="cidade" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Tempo de residência:
                                            <input runat="server" type="text" id="tempoRisidencia" name="tempoRisidencia" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Tipo de residência:
                                            <input runat="server" type="text" id="tipoResidencia" name="tipoResidencia" class="form-control input-lg" />
                                    </div>
                                    <h4>Dados Profissionais</h4>
                                    <hr />
                                    <div class="form-group">
                                        Empresa:
                                            <input runat="server" type="text" id="empresa" name="empresa" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        CNPJ:
                                            <input runat="server" type="text" id="cnpj" name="cnpj" class="form-control input-lg" maxlength="18" />
                                    </div>
                                    <div class="form-group">
                                        Cargo:
                                            <input runat="server" type="text" id="cargo" name="cargo" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Data de admissão:<span class="texto-regex-expl">Ex: 01/01/1900</span>
                                        <input runat="server" type="text" id="dataAdmissao" name="dataAdmissao" class="form-control input-lg" maxlength="10" />
                                    </div>
                                    <div class="form-group">
                                        Tipo de comprovação:
                                            <input runat="server" type="text" id="tipoComprovacao" name="tipoComprovacao" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Renda Mensal:<span class="texto-regex-expl">Ex: 1100,50</span>
                                        <input runat="server" type="text" id="renda" name="renda" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Endereço empresa:
                                            <input runat="server" type="text" id="enderecoEmp" name="enderecoEmp" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Número:
                                            <input runat="server" type="text" id="numEnderecoEmp" name="numEnderecoEmp" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Complemento:
                                            <input runat="server" type="text" id="complementoEmp" name="complementoEmp" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Bairro:
                                            <input runat="server" type="text" id="bairroEmp" name="bairroEmp" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Cidade:
                                            <input runat="server" type="text" id="cidadeEmp" name="cidadeEmp" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        CEP:
                                            <input runat="server" type="text" id="cepEmp" name="cepEmp" class="form-control input-lg" maxlength="9" />
                                    </div>
                                    <div class="form-group">
                                        Estado:
                                            <input runat="server" type="text" id="estadoEmp" name="estadoEmp" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Telefone:<span class="texto-regex-expl">Ex: (99)9999-9999</span>
                                        <input runat="server" type="text" id="telefoneEmp" name="telefoneEmp" class="form-control input-lg" maxlength="14" />
                                    </div>
                                    <div class="form-group">
                                        Ramal:
                                            <input runat="server" type="text" id="ramal" name="ramal" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Emprego anterior:
                                            <input runat="server" type="text" id="empregoAnterior" name="empregoAnterior" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Telefone:<span class="texto-regex-expl">Ex: (99)9999-9999</span>
                                        <input runat="server" type="text" id="telefoneEmpAnterior" name="telefoneEmpAnterior" class="form-control input-lg" maxlength="14" />
                                    </div>
                                    <div class="form-group">
                                        Tempo de empresa:
                                            <input runat="server" type="text" id="tempoEmpresa" name="tempoEmpresa" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Outras rendas:<span class="texto-regex-expl">Ex: 1100,50</span>
                                        <input runat="server" type="text" id="outrasRendas" name="outrasRendas" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Descrição das outras rendas:
                                            <input runat="server" type="text" id="descOutrasRendas" name="descOutrasRendas" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Número do benefício:
                                            <input runat="server" type="text" id="numBeneficio" name="numBeneficio" class="form-control input-lg" />
                                    </div>
                                    <h4>Referências Bancárias e de Crédito</h4>
                                    <hr />
                                    <div class="form-group">
                                        Banco 01:
                                            <input runat="server" type="text" id="bancoUm" name="bancoUm" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Agência:
                                            <input runat="server" type="text" id="agenciaUm" name="agenciaUm" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Conta:
                                            <input runat="server" type="text" id="contaUm" name="contaUm" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Tempo de conta:
                                            <input runat="server" type="text" id="tempoContaUm" name="tempoContaUm" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Limite de cheque especial:<span class="texto-regex-expl">Ex: 1100,50</span>
                                        <input runat="server" type="text" id="limiteChequeUm" name="limiteChequeUm" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Banco 02
                                            <input runat="server" type="text" id="bancoDois" name="bancoDois" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Agência
                                            <input runat="server" type="text" id="agenciaDois" name="AgenciaDois" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Conta:
                                            <input runat="server" type="text" id="contaDois" name="contaDois" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Tempo de conta:
                                            <input runat="server" type="text" id="tempoContaDois" name="tempoContaDois" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Limite de cheque especial:<span class="texto-regex-expl">Ex: 1100,50</span>
                                        <input runat="server" type="text" id="limiteChequeDois" name="limiteChequeDois" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Tipo de cartão:
                                        <asp:DropDownList ID="tipoCartao" runat="server" CssClass="form-control input-lg">
                                            <asp:ListItem Value="0" Text=""></asp:ListItem>
                                            <asp:ListItem Value="1" Text="Nacional">Nacional</asp:ListItem>
                                            <asp:ListItem Value="2" Text="Internacional">Internacional</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        Operadora:
                                        <asp:DropDownList ID="operadora" runat="server" CssClass="form-control input-lg">
                                            <asp:ListItem Value="0" Text=""></asp:ListItem>
                                            <asp:ListItem Value="1" Text="Visa">Visa</asp:ListItem>
                                            <asp:ListItem Value="2" Text="MasterCard">MasterCard</asp:ListItem>
                                            <asp:ListItem Value="3" Text="Gold">Gold</asp:ListItem>
                                            <asp:ListItem Value="4" Text="Diners">Diners</asp:ListItem>
                                            <asp:ListItem Value="5" Text="Amex">Amex</asp:ListItem>
                                            <asp:ListItem Value="6" Text="Outros">Outros</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        Observação:
                                            <input runat="server" type="text" id="observacao" name="observacao" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Limite de crédito:<span class="texto-regex-expl">Ex: 1100,50</span>
                                        <input runat="server" type="text" id="limiteCartao" name="limiteCartao" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Já financiou outro veículo?
                                        <asp:DropDownList ID="jaFinanciou" runat="server" CssClass="form-control input-lg">
                                            <asp:ListItem Value="0" Text=""></asp:ListItem>
                                            <asp:ListItem Value="1" Text="Sim">Sim</asp:ListItem>
                                            <asp:ListItem Value="2" Text="Não">Não</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        Financeira:
                                            <input runat="server" type="text" id="financeira" name="financeira" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Situação: 
                                        <asp:DropDownList ID="situacao" runat="server" CssClass="form-control input-lg">
                                            <asp:ListItem Value="0" Text=""></asp:ListItem>
                                            <asp:ListItem Value="1" Text="Em Andamento">Em Andamento</asp:ListItem>
                                            <asp:ListItem Value="2" Text="Quitado">Quitado</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <h4>Lista de Bens</h4>
                                    <hr />
                                    <div class="form-group">
                                        Tipo de Bem 01: 
                                        <asp:DropDownList ID="tipoBemUm" runat="server" CssClass="form-control input-lg">
                                            <asp:ListItem Value="0" Text=""></asp:ListItem>
                                            <asp:ListItem Value="1" Text="Imóvel">Imóvel</asp:ListItem>
                                            <asp:ListItem Value="2" Text="Veículo">Veículo</asp:ListItem>
                                            <asp:ListItem Value="3" Text="Outros">Outros</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        Descrição/Modelo:
                                            <input runat="server" type="text" id="descricaoBemUm" name="descricaoBemUm" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Valor:<span class="texto-regex-expl">Ex: 1100,50</span>
                                        <input runat="server" type="text" id="valorBemUm" name="valorBemUm" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Tipo de Bem 02: 
                                        <asp:DropDownList ID="tipoBemDois" runat="server" CssClass="form-control input-lg">
                                            <asp:ListItem Value="0" Text=""></asp:ListItem>
                                            <asp:ListItem Value="1" Text="Imóvel">Imóvel</asp:ListItem>
                                            <asp:ListItem Value="2" Text="Veículo">Veículo</asp:ListItem>
                                            <asp:ListItem Value="3" Text="Outros">Outros</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        Descrição/Modelo:
                                            <input runat="server" type="text" id="descricaoBemDois" name="descricaoBemDois" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Valor:<span class="texto-regex-expl">Ex: 1100,50</span>
                                        <input runat="server" type="text" id="valorBemDois" name="valorBemDois" class="form-control input-lg" />
                                    </div>
                                    <h4>Autorização</h4>
                                    <hr />
                                    <div class="form-group">
                                        <input runat="server" type="checkbox" id="autorizacao" name="autorizacao" value="Sim" checked />
                                        Autorizo o envio de informações a respeito da proposta de crédito ao email nela informado.
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="BtnEnviar" runat="server" Text="Enviar" class="btn btn-primary btn-lg pull-right"
                                            OnClick="BtnEnviar_Click" ValidationGroup="Enviar" />
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="clearfix"></div>
                        <div>
                            <!-- Itens obrigatórios -->
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*  Informe o veículo"
                                    ControlToValidate="veiculo" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*  Informe o ano do modelo"
                                    ControlToValidate="anoModelo" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*  Informe o valor da entrada"
                                    ControlToValidate="valorEntrada" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*  Informe o valor financiado"
                                    ControlToValidate="valorFinanciado" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*  Informe o vencimento da parcela"
                                    ControlToValidate="vencParcela" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*  Informe o nome completo"
                                    ControlToValidate="nome" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*  Informe o cpf"
                                    ControlToValidate="cpf" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*  Informe o telefone"
                                    ControlToValidate="telefone" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*  Informe o celular"
                                    ControlToValidate="celular" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*  Informe o email"
                                    ControlToValidate="email" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*  Informe o número do documento"
                                    ControlToValidate="numDoc" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*  Informe a data de emissão do documento"
                                    ControlToValidate="emissaoDoc" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*  Informe o órgao expedidor"
                                    ControlToValidate="orgaoExpedidor" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*  Informe data de nascimento"
                                    ControlToValidate="dataNasc" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="*  Informe a cidade de nascimento"
                                    ControlToValidate="cidadeNasc" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="*  Informe a nacionalidade"
                                    ControlToValidate="nacionalidade" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="*  Informe o nome do pai"
                                    ControlToValidate="nomePai" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ErrorMessage="*  Informe o nome da mãe"
                                    ControlToValidate="nomeMae" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="*  Informe o sexo"
                                    ControlToValidate="sexo" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <!-- Expressões regulares -->
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Email inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="email" ValidationGroup="Enviar" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="* Telefone inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="telefone" ValidationGroup="Enviar" ValidationExpression="^\(\d{2}\)\d{4,5}-\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="* Celular inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="Celular" ValidationGroup="Enviar" ValidationExpression="^\(\d{2}\)\d{4,5}-\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="* Telefone emprego inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="telefoneEmp" ValidationGroup="Enviar" ValidationExpression="^\(\d{2}\)\d{4,5}-\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator39" runat="server" ErrorMessage="* Telefone emprego anterior inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="telefoneEmpAnterior" ValidationGroup="Enviar" ValidationExpression="^\(\d{2}\)\d{4,5}-\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="* CEP inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="cep" ValidationGroup="Enviar" ValidationExpression="^\d{5}-\d{3}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="* CEP empresa inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="cepEmp" ValidationGroup="Enviar" ValidationExpression="^\d{5}-\d{3}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="* CPF inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="cpf" ValidationGroup="Enviar" ValidationExpression="^\d{3}.\d{3}.\d{3}-\d{2}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="* CNPJ inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="cnpj" ValidationGroup="Enviar" ValidationExpression="^\d{2}.\d{3}.\d{3}/\d{4}-\d{2}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="* Data de nascimento inválida" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="dataNasc" ValidationGroup="Enviar" ValidationExpression="^\d{2}/\d{2}/\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="* Data de admissão inválida" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="dataAdmissao" ValidationGroup="Enviar" ValidationExpression="^\d{2}/\d{2}/\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="* Data de vencimento da 1ª parcela inválida" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="vencParcela" ValidationGroup="Enviar" ValidationExpression="^\d{2}/\d{2}/\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ErrorMessage="* Data de emissão do documento inválida" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="emissaoDoc" ValidationGroup="Enviar" ValidationExpression="^\d{2}/\d{2}/\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ErrorMessage="* Ano/Modelo inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="anoModelo" ValidationGroup="Enviar" ValidationExpression="^\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ErrorMessage="* Número do documento inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="numDoc" ValidationGroup="Enviar" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server" ErrorMessage="* O número do endereço é inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="numEndereco" ValidationGroup="Enviar" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator25" runat="server" ErrorMessage="* O número do endereço da empresa é inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="numEnderecoEmp" ValidationGroup="Enviar" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator26" runat="server" ErrorMessage="* O número do ramal é inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="ramal" ValidationGroup="Enviar" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator27" runat="server" ErrorMessage="* O número do benefício é inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="numBeneficio" ValidationGroup="Enviar" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator28" runat="server" ErrorMessage="* Primeira agência inválida" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="agenciaUm" ValidationGroup="Enviar" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator29" runat="server" ErrorMessage="* Segunda agência inválida" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="agenciaDois" ValidationGroup="Enviar" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator30" runat="server" ErrorMessage="* Valor da entrada inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="valorEntrada" ValidationGroup="Enviar" ValidationExpression="^[1-9]\d*(,\d+)?$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator31" runat="server" ErrorMessage="* Valor financiado inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="valorFinanciado" ValidationGroup="Enviar" ValidationExpression="^[1-9]\d*(,\d+)?$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator32" runat="server" ErrorMessage="* Valor da renda inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="renda" ValidationGroup="Enviar" ValidationExpression="^[1-9]\d*(,\d+)?$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator33" runat="server" ErrorMessage="* Valor de outras rendas inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="outrasRendas" ValidationGroup="Enviar" ValidationExpression="^[1-9]\d*(,\d+)?$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator34" runat="server" ErrorMessage="* Valor do limite do cheque especial do banco 1 inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="limiteChequeUm" ValidationGroup="Enviar" ValidationExpression="^[1-9]\d*(,\d+)?$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator35" runat="server" ErrorMessage="* Valor do limite do cheque especial do banco 2 inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="limiteChequeDois" ValidationGroup="Enviar" ValidationExpression="^[1-9]\d*(,\d+)?$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator36" runat="server" ErrorMessage="* Valor do limite do cartão de crédito inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="limiteCartao" ValidationGroup="Enviar" ValidationExpression="^[1-9]\d*(,\d+)?$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator37" runat="server" ErrorMessage="* Valor do primeiro bem inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="valorBemUm" ValidationGroup="Enviar" ValidationExpression="^[1-9]\d*(,\d+)?$"></asp:RegularExpressionValidator>
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator38" runat="server" ErrorMessage="* Valor do segundo bem inválido" CssClass="text-validacao"
                                    Display="Dynamic" ControlToValidate="valorBemDois" ValidationGroup="Enviar" ValidationExpression="^[1-9]\d*(,\d+)?$"></asp:RegularExpressionValidator>
                            </div>
                            <!-- Selects Obrigatórios-->
                            <div>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="text-validacao" Display="Dynamic" ValidationGroup="Enviar"
                                    ErrorMessage="* Selecione uma opção válida para número de parcelas" ControlToValidate="numParcelas" MinimumValue="1" MaximumValue="99999999999"></asp:RangeValidator>
                            </div>
                            <div>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" CssClass="text-validacao" Display="Dynamic" ValidationGroup="Enviar"
                                    ErrorMessage="* Selecione uma opção válida para tipo de documento" ControlToValidate="tipoDoc" MinimumValue="1" MaximumValue="99999999999"></asp:RangeValidator>
                            </div>
                            <div>
                                <asp:RangeValidator ID="RangeValidator3" runat="server" CssClass="text-validacao" Display="Dynamic" ValidationGroup="Enviar"
                                    ErrorMessage="* Selecione uma opção válida para UF de nascimento" ControlToValidate="ufNasc" MinimumValue="1" MaximumValue="99999999999"></asp:RangeValidator>
                            </div>
                            <div>
                                <asp:RangeValidator ID="RangeValidator4" runat="server" CssClass="text-validacao" Display="Dynamic" ValidationGroup="Enviar"
                                    ErrorMessage="* Selecione uma opção válida para estado civil" ControlToValidate="estadoCivil" MinimumValue="1" MaximumValue="99999999999"></asp:RangeValidator>
                            </div>
                            <div>
                                <asp:RangeValidator ID="RangeValidator5" runat="server" CssClass="text-validacao" Display="Dynamic" ValidationGroup="Enviar"
                                    ErrorMessage="* Selecione uma opção válida para escolaridade" ControlToValidate="escolaridade" MinimumValue="1" MaximumValue="99999999999"></asp:RangeValidator>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Body Content -->
</asp:Content>
