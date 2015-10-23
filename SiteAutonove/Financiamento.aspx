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
                                        <input runat="server" type="text" id="anoModelo" name="anoModelo" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        Valor Entrada: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="valorEntrada" name="valorEntrada" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        Valor Financiado: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="valorFinanciado" name="valorFinanciado" class="form-control input-lg">
                                    </div>
                                    <div class="form-group">
                                        Número de Parcelas: <span class="required-itens">*</span>
                                        <select runat="server" id="numParcelas" name="numParcelas" class="form-control input-lg">
                                            <option value="0">Escolha</option>
                                            <option value="6 meses">6 meses</option>
                                            <option value="12 meses">12 meses</option>
                                            <option value="18 meses">18 meses</option>
                                            <option value="24 meses">24 meses</option>
                                            <option value="30 meses">30 meses</option>
                                            <option value="36 meses">36 meses</option>
                                            <option value="48 meses">48 meses</option>
                                            <option value="60 meses">60 meses</option>
                                            <option value="72 meses">72 meses</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        Vencto 1 Parcela: <span class="required-itens">*</span>
                                        <asp:TextBox ID="vencParcela" runat="server" class="form-control input-lg" Mask="##/##/####"></asp:TextBox>
                                        <%--<input runat="server" type="text" id="vencParcela" name="vencParcela" class="form-control input-lg" />--%>
                                    </div>
                                    <h4>Dados Pessoais</h4>
                                    <hr />
                                    <div class="form-group">
                                        Nome Completo: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="nome" name="nome" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        CPF: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="cpf" name="cpf" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Telefone: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="telefone" name="telefone" class="form-control input-lg" maxlength="11" />
                                    </div>
                                    <div class="form-group">
                                        Celular:
                                            <input runat="server" type="text" id="celular" name="celular" class="form-control input-lg" maxlength="11" />
                                    </div>
                                    <div class="form-group">
                                        Email: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="email" name="email" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Tipo de documento <span class="required-itens">*</span>
                                        <select runat="server" id="tipoDoc" name="TipoDoc" class="form-control input-lg">
                                            <option value="0">Escolha</option>
                                            <option value="rg">RG</option>
                                            <option value="rne">RNE</option>
                                            <option value="cnh">CNH</option>
                                            <option value="ric">RIC</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        Número do documento: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="numDoc" name="numDoc" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Emissão do documento: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="emissaoDoc" name="emissaoDoc" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Órgão Expedidor: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="orgaoExpedidor" name="orgaoExpedidor" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Data de nascimento: <span class="required-itens">*</span>
                                        <input runat="server" type="text" id="dataNasc" name="dataNasc" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        UF de nascimento: <span class="required-itens">*</span>
                                        <select runat="server" id="ufNasc" name="ufNasc" class="form-control input-lg">
                                            <option value="0">Escolha</option>
                                            <option value="AC">AC</option>
                                            <option value="AL">AL</option>
                                            <option value="AP">AP</option>
                                            <option value="AM">AM</option>
                                            <option value="BA">BA</option>
                                            <option value="CE">CE</option>
                                            <option value="DF">DF</option>
                                            <option value="ES">ES</option>
                                            <option value="GO">GO</option>
                                            <option value="MA">MA</option>
                                            <option value="MT">MT</option>
                                            <option value="MS">MS</option>
                                            <option value="MG">MG</option>
                                            <option value="PA">PA</option>
                                            <option value="PB">PB</option>
                                            <option value="PR">PR</option>
                                            <option value="PE">PE</option>
                                            <option value="PI">PI</option>
                                            <option value="RJ">RJ</option>
                                            <option value="RN">RN</option>
                                            <option value="RS">RS</option>
                                            <option value="RO">RO</option>
                                            <option value="RR">RR</option>
                                            <option value="SC">SC</option>
                                            <option value="SP">SP</option>
                                            <option value="SE">SE</option>
                                            <option value="TO">TO</option>
                                        </select>
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
                                        <select runat="server" id="estadoCivil" name="estadoCivil" class="form-control input-lg">
                                            <option value="0">Escolha</option>
                                            <option value="Solteiro(a)">Solteiro(a)</option>
                                            <option value="Casado(a)">Casado(a)</option>
                                            <option value="União Estavel">União Estável</option>
                                            <option value="Divorciado(a)">Divorciado(a)</option>
                                            <option value="Viúvo(a)">Viúvo(a)</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        Escolaridade: <span class="required-itens">*</span>
                                        <select runat="server" id="escolaridade" name="escolaridade" class="form-control input-lg">
                                            <option value="0">Escolha</option>
                                            <option value="Primeiro Grau">Primeiro Grau</option>
                                            <option value="Segundo Grau">Segundo Grau</option>
                                            <option value="Superior">Superior</option>
                                            <option value="Pós Graduação">Pós Graduação</option>
                                        </select>
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
                                            <input runat="server" type="text" id="cep" name="cep" class="form-control input-lg" />
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
                                            <input runat="server" type="text" id="cnpj" name="cnpj" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Cargo:
                                            <input runat="server" type="text" id="cargo" name="cargo" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Data de admissão:
                                            <input runat="server" type="text" id="dataAdmissao" name="dataAdmissao" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Tipo de comprovação:
                                            <input runat="server" type="text" id="tipoComprovacao" name="tipoComprovacao" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Renda Mensal:
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
                                            <input runat="server" type="text" id="cepEmp" name="cepEmp" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Estado:
                                            <input runat="server" type="text" id="estadoEmp" name="estadoEmp" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Telefone:
                                            <input runat="server" type="text" id="telefoneEmp" name="telefoneEmp" class="form-control input-lg" maxlength="11" />
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
                                        Telefone:
                                            <input runat="server" type="text" id="telefoneEmpAnterior" name="telefoneEmpAnterior" class="form-control input-lg" maxlength="11" />
                                    </div>
                                    <div class="form-group">
                                        Tempo de empresa:
                                            <input runat="server" type="text" id="tempoEmpresa" name="tempoEmpresa" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Outras rendas:
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
                                        Limite de cheque especial:
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
                                        Limite de cheque especial:
                                            <input runat="server" type="text" id="limiteChequeDois" name="limiteChequeDois" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Tipo de cartão:
                                            <select runat="server" id="tipoCartao" name="tipoCartao" class="form-control input-lg">
                                                <option value="-1">Escolha</option>
                                                <option value="Nacional">Nacional</option>
                                                <option value="Internacional">Internacional</option>
                                            </select>
                                    </div>
                                    <div class="form-group">
                                        Operadora:
                                            <select runat="server" id="operadora" name="operadora" class="form-control input-lg">
                                                <option value="-1">Escolha</option>
                                                <option value="Visa">Visa</option>
                                                <option value="MasterCard">MasterCard</option>
                                                <option value="Gold">Gold</option>
                                                <option value="Diners">Diners</option>
                                                <option value="Amex">Amex</option>
                                                <option value="Outros">Outros</option>
                                            </select>
                                    </div>
                                    <div class="form-group">
                                        Observação:
                                            <input runat="server" type="text" id="observacao" name="observacao" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Limite de crédito:
                                            <input runat="server" type="text" id="limiteCartao" name="limiteCartao" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Já financiou outro veículo?
                                            <select runat="server" id="jaFinanciou" name="jaFinanciou" class="form-control input-lg">
                                                <option value="-1">Escolha</option>
                                                <option value="Sim">Sim</option>
                                                <option value="Não">Não</option>
                                            </select>
                                    </div>
                                    <div class="form-group">
                                        Financeira:
                                            <input runat="server" type="text" id="financeira" name="financeira" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Situação
                                            <select runat="server" id="situacao" name="situacao" class="form-control input-lg">
                                                <option value="-1">Escolha</option>
                                                <option value="Em Andamento">Em Andamento</option>
                                                <option value="Quitado">Quitado</option>
                                            </select>
                                    </div>
                                    <h4>Lista de Bens</h4>
                                    <hr />
                                    <div class="form-group">
                                        Tipo de Bem 01
                                            <select runat="server" id="tipoBemUm" name="tipoBemUm" class="form-control input-lg">
                                                <option value="-1">Escolha</option>
                                                <option value="Imóvel">Imóvel</option>
                                                <option value="Veículo">Veículo</option>
                                                <option value="Outros">Outros</option>
                                            </select>
                                    </div>
                                    <div class="form-group">
                                        Descrição/Modelo:
                                            <input runat="server" type="text" id="descricaoBemUm" name="descricaoBemUm" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Valor:
                                            <input runat="server" type="text" id="valorBemUm" name="valorBemUm" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Tipo de Bem 02
                                            <select runat="server" id="tipoBemDois" name="tipoBemDois" class="form-control input-lg">
                                                <option value="-1">Escolha</option>
                                                <option value="Imóvel">Imóvel</option>
                                                <option value="Veículo">Veículo</option>
                                                <option value="Outros">Outros</option>
                                            </select>
                                    </div>
                                    <div class="form-group">
                                        Descrição/Modelo:
                                            <input runat="server" type="text" id="descricaoBemDois" name="descricaoBemDois" class="form-control input-lg" />
                                    </div>
                                    <div class="form-group">
                                        Valor:
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
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Informe o veículo"
                                    ControlToValidate="veiculo" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Informe o ano do modelo"
                                    ControlToValidate="anoModelo" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Informe o valor da entrada"
                                    ControlToValidate="valorEntrada" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Informe o valor financiado"
                                    ControlToValidate="valorFinanciado" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Informe o vencimento da parcela"
                                    ControlToValidate="vencParcela" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Informe o nome completo"
                                    ControlToValidate="nome" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="* Informe o cpf"
                                    ControlToValidate="cpf" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="* Informe o telefone"
                                    ControlToValidate="telefone" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="* Informe o celular"
                                    ControlToValidate="celular" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="* Informe o email"
                                    ControlToValidate="email" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="* Informe o número do documento"
                                    ControlToValidate="numDoc" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="* Informe a data de emissão do documento"
                                    ControlToValidate="emissaoDoc" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="* Informe o órgao expedidor"
                                    ControlToValidate="orgaoExpedidor" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="* Informe data de nascimento"
                                    ControlToValidate="dataNasc" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="* Informe a cidade de nascimento"
                                    ControlToValidate="cidadeNasc" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="* Informe a nacionalidade"
                                    ControlToValidate="nacionalidade" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="* Informe o nome do pai"
                                    ControlToValidate="nomePai" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="* Informe o nome da mãe"
                                    ControlToValidate="nomeMae" ValidationGroup="Enviar" CssClass="text-validacao" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div id="message"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Body Content -->
</asp:Content>
