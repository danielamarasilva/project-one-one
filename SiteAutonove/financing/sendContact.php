<?php

if(!$_POST) exit;

//Dados do bem
$veiculo     = $_POST['veiculo'];
$anoModelo     = $_POST['anoModelo'];
$valorEntrada    = $_POST['valorEntrada'];
$valorFinanciado     = $_POST['valorFinanciado'];
$numParcelas = $_POST['numParcelas'];
$vencParcela     = $_POST['vencParcela'];

//Dados Pessoais
$nome     = $_POST['nome'];
$cpf    = $_POST['cpf'];
$telefone     = $_POST['telefone'];
$celular = $_POST['celular'];
$email     = $_POST['email'];
$TipoDoc     = $_POST['TipoDoc'];
$numDoc    = $_POST['numDoc'];
$emissaoDoc     = $_POST['emissaoDoc'];
$orgaoExpedidor = $_POST['orgaoExpedidor'];
$dataNasc     = $_POST['dataNasc'];
$ufNasc     = $_POST['ufNasc'];
$cidadeNasc    = $_POST['cidadeNasc'];
$nacionalidade     = $_POST['nacionalidade'];
$sexo = $_POST['sexo'];
$estadoCivil     = $_POST['estadoCivil'];
$escolaridade    = $_POST['escolaridade'];
$nomePai     = $_POST['nomePai'];
$nomeMae = $_POST['nomeMae'];
$dataNasc     = $_POST['dataNasc'];
$dependentes     = $_POST['dependentes'];
$endereco    = $_POST['endereco'];
$numEndereco     = $_POST['numEndereco'];
$bairro = $_POST['bairro'];
$cep     = $_POST['cep'];
$estado     = $_POST['estado'];
$cidade    = $_POST['cidade'];
$tempoRisidencia     = $_POST['tempoRisidencia'];
$tipoResidencia = $_POST['tipoResidencia'];

//Dados Profissionais
$empresa     = $_POST['empresa'];
$cnpj     = $_POST['cnpj'];
$cargo    = $_POST['cargo'];
$dataAdmissao  = $_POST['dataAdmissao'];
$tipoComprovacao = $_POST['tipoComprovacao'];
$renda     = $_POST['renda'];
$enderecoEmp     = $_POST['enderecoEmp'];
$numEnderecoEmp    = $_POST['numEnderecoEmp'];
$complementoEmp     = $_POST['complementoEmp'];
$bairroEmp = $_POST['bairroEmp'];
$cidadeEmp     = $_POST['cidadeEmp'];
$cepEmp     = $_POST['cepEmp'];
$estadoEmp    = $_POST['estadoEmp'];
$telefoneEmp     = $_POST['telefoneEmp'];
$ramal = $_POST['ramal'];
$empregoAnterior     = $_POST['empregoAnterior'];
$telefoneEmpAnterior     = $_POST['telefoneEmpAnterior'];
$tempoEmpresa    = $_POST['tempoEmpresa'];
$outrasRendas     = $_POST['outrasRendas'];
$descOutrasRendas = $_POST['descOutrasRendas'];
$numBeneficio     = $_POST['numBeneficio'];

//Referências Bancárias e de Crédito
$bancoUm     = $_POST['bancoUm'];
$agenciaUm    = $_POST['agenciaUm'];
$contaUm     = $_POST['contaUm'];
$tempoContaUm = $_POST['tempoContaUm'];
$limiteChequeUm     = $_POST['limiteChequeUm'];
$bancoDois     = $_POST['bancoDois'];
$AgenciaDois    = $_POST['AgenciaDois'];
$contaDois     = $_POST['contaDois'];
$tempoContaDois = $_POST['tempoContaDois'];
$limiteChequeDois     = $_POST['limiteChequeDois'];
$tipoCartao     = $_POST['tipoCartao'];
$operadora    = $_POST['operadora'];
$observacao     = $_POST['observacao'];
$limiteCartao = $_POST['limiteCartao'];
$jaFinanciou     = $_POST['jaFinanciou'];
$financeira     = $_POST['financeira'];
$situacao    = $_POST['situacao'];

//LISTA DE BENS
$tipoBemUm     = $_POST['tipoBemUm'];
$descricaoBemUm = $_POST['descricaoBemUm'];
$valorBemUm     = $_POST['valorBemUm'];
$tipoBemDois     = $_POST['tipoBemDois'];
$descricaoBemDois    = $_POST['descricaoBemDois'];
$valorBemDois     = $_POST['valorBemDois'];
$autorizacao = $_POST['autorizacao'];

if($autorizacao == "")
{
    $autorizacao = "Não";
}

$html = '<!DOCTYPE HTML>'.
            '<html>'.
                '<head>'.
                    '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">'.
                    '<title>Autonove Multimarcas</title>'.
                '</head>'.
                '<body style="width:400px; margin: 0 auto; font-family:Arial,Verdana,Sans-serif; font-size:1em;">'.
                    '<h1>Financiamento Autonove</h1>'.
                    '<h2 style="font-size:1.5em;">Dados do bem</h2><hr>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Veículo: </span>'.
                        '<span>'. $veiculo .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Ano do veículo: </span>'.
                        '<span>'. $anoModelo .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Valor da entrada: </span>'.
                        '<span>R$ '. $valorEntrada .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Valor financiado: </span>'.
                        '<span>R$ '. $valorFinanciado .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Número de parcelas: </span>'.
                        '<span>'. $numParcelas .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Vencimento da parcela: </span>'.
                        '<span>'. $vencParcela .'</span>'.
                    '</p>'.
                    '<h2 style="font-size:1.5em;">Dados Pessoais</h2><hr>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Nome: </span>'.
                        '<span>'. $nome .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">CPF: </span>'.
                        '<span>'. $cpf .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Telefone: </span>'.
                        '<span>'. $telefone .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Celular: </span>'.
                        '<span>'. $celular .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Email: </span>'.
                        '<span>'. $email .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Tipo de documento: </span>'.
                        '<span>'. $TipoDoc .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Número do documento: </span>'.
                        '<span>'. $numDoc .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Emissão do documento: </span>'.
                        '<span>'. $emissaoDoc .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Órgão expedidor: </span>'.
                        '<span>'. $orgaoExpedidor .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Data de nascimento: </span>'.
                        '<span>'. $dataNasc .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">UF de nascimento: </span>'.
                        '<span>'. $ufNasc .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Cidade de nascimento: </span>'.
                        '<span>'. $cidadeNasc .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Nacionalidade: </span>'.
                        '<span>'. $nacionalidade .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Sexo: </span>'.
                        '<span>'. $sexo .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Estado civil: </span>'.
                        '<span>'. $estadoCivil .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Escolaridade: </span>'.
                        '<span>'. $escolaridade .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Nome do pai: </span>'.
                        '<span>'. $nomePai .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Nome da mãe: </span>'.
                        '<span>'. $nomeMae .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Data de nascimento: </span>'.
                        '<span>'. $dataNasc .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Dependentes: </span>'.
                        '<span>'. $dependentes .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Endereço: </span>'.
                        '<span>'. $endereco .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Número: </span>'.
                        '<span>'. $numEndereco .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Bairro: </span>'.
                        '<span>'. $bairro .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">CEP: </span>'.
                        '<span>'. $cep .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Estado: </span>'.
                        '<span>'. $estado .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Cidade: </span>'.
                        '<span>'. $cidade .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Tempo de residência: </span>'.
                        '<span>'. $tempoRisidencia .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Tipo de residência: </span>'.
                        '<span>'. $tipoResidencia .'</span>'.
                    '</p>'.
                    '<h2 style="font-size:1.5em;">Dados Profissionais</h2><hr>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Empresa: </span>'.
                        '<span>'. $empresa .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">CNPJ: </span>'.
                        '<span>'. $cnpj .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Cargo: </span>'.
                        '<span>'. $cargo .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Data de admissão: </span>'.
                        '<span>'. $dataAdmissao .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Tipo de comprovação: </span>'.
                        '<span>'. $tipoComprovacao .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Renda: </span>'.
                        '<span>'. $renda .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Endereço empresa: </span>'.
                        '<span>'. $enderecoEmp .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Número: </span>'.
                        '<span>'. $numEnderecoEmp .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Complemento: </span>'.
                        '<span>'. $complementoEmp .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Bairro: </span>'.
                        '<span>'. $bairroEmp .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Cidade: </span>'.
                        '<span>'. $cidadeEmp .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">CEP: </span>'.
                        '<span>'. $cepEmp .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Estado: </span>'.
                        '<span>'. $estadoEmp .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Telefone: </span>'.
                        '<span>'. $telefoneEmp .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Ramal: </span>'.
                        '<span>'. $ramal .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Emprego anterior: </span>'.
                        '<span>'. $empregoAnterior .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Telefone: </span>'.
                        '<span>'. $telefoneEmpAnterior .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Tempo de empresa: </span>'.
                        '<span>'. $tempoEmpresa .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Outras rendas: </span>'.
                        '<span>'. $outrasRendas .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Descrição das outras rendas: </span>'.
                        '<span>'. $descOutrasRendas .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Número do benefício: </span>'.
                        '<span>'. $numBeneficio .'</span>'.
                    '</p>'.
                    '<h2 style="font-size:1.5em;">Referências Bancárias e de Crédito</h2><hr>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Banco: </span>'.
                        '<span>'. $bancoUm .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Agência: </span>'.
                        '<span>'. $agenciaUm .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Conta: </span>'.
                        '<span>'. $contaUm .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Tempo de conta: </span>'.
                        '<span>'. $tempoContaUm .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Limite de cheque especial: </span>'.
                        '<span>'. $limiteChequeUm .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Banco: </span>'.
                        '<span>'. $bancoDois .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Agência: </span>'.
                        '<span>'. $AgenciaDois .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Conta: </span>'.
                        '<span>'. $contaDois .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Veículo: </span>'.
                        '<span>'. $tempoContaDois .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Limite de cheque especial: </span>'.
                        '<span>'. $limiteChequeDois .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Tipo de cartão: </span>'.
                        '<span>'. $tipoCartao .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Operadora: </span>'.
                        '<span>'. $operadora .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Observação: </span>'.
                        '<span>'. $observacao .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Limite de cartão: </span>'.
                        '<span>'. $limiteCartao .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Já financiou outro veículo? </span>'.
                        '<span>'.$jaFinanciou  .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Financeira: </span>'.
                        '<span>'. $financeira .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Situação: </span>'.
                        '<span>'. $situacao .'</span>'.
                    '</p>'.
                    '<h2 style="font-size:1.5em;">Lista de Bens</h2><hr>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Tipo de bem: </span>'.
                        '<span>'. $tipoBemUm .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Descrição do bem: </span>'.
                        '<span>'. $descricaoBemUm .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Valor do bem: </span>'.
                        '<span>'. $valorBemUm .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Tipo do bem: </span>'.
                        '<span>'. $tipoBemDois .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Descrição do bem: </span>'.
                        '<span>'. $descricaoBemDois .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Valor do bem: </span>'.
                        '<span>'. $valorBemDois .'</span>'.
                    '</p>'.
                    '<p>'.
                        '<span style="font-weight:bold;">Autorizo o envio de informações a respeito da proposta de crédito: </span>'.
                        '<span>'. $autorizacao .'</span>'.
                    '</p>'.
                '</body>'.
            '</html>';

echo $html;
?>