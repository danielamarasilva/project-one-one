using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;
using System.Text.RegularExpressions;

namespace SiteAutonove
{
    public class XmlManagement
    {
        public List<Veiculo> GetVeiculos()
        {
            try
            {
                // Lista de veícculos para retornar
                List<Veiculo> veiculos = new List<Veiculo>();
                Veiculo veiculo;
                string opcionais;

                // Endereço do arquivo XML
                //string fileAddress = "http://www.clienteparasempre.com.br/autoprimeford//XML/1639.xml";
                string fileAddress = "http://www.cps21.com.br/estoque_autoweb/1639.xml";

                // Leitura dos veículos do XML apenas usados
                XDocument docXML = XDocument.Load(fileAddress);

                List<XElement> el =
                   docXML.Element("CargaVeiculos")
                       .Descendants("Veiculos")
                       .Descendants("Veiculo")
                       .Where(vcl => EPlacaValida(vcl.Element("Placa").Value) == true)
                       .OrderBy(vcl => vcl.Element("Preco").Value)
                       .ToList();
                foreach (XElement element in el)
                {
                    // Instanciando um novo objeto para o veículo
                    veiculo = new Veiculo();
                    veiculo.Fotos = new List<string>();

                    // Compondo dados do veículo
                    veiculo.Id = element.Element("CodigoVeiculo").Value;
                    veiculo.Placa = element.Element("Placa").Value;
                    if (element.Element("Preco").Value == "")
                    {
                        veiculo.Valor = 0;
                    }
                    else
                    {
                        veiculo.Valor = decimal.Parse(element.Element("Preco").Value.Replace('.', ','));
                    }
                    veiculo.Marca = element.Element("Marca").Value;
                    veiculo.Modelo = element.Element("Modelo").Value;
                    veiculo.Cor = element.Element("Cor").Value;
                    veiculo.Versao = element.Element("Versao").Value;
                    veiculo.AnoFabricacao = element.Element("AnoFabricacao").Value;
                    veiculo.AnoModelo = element.Element("AnoModelo").Value;

                    // limpando variavel
                    opcionais = null;

                    ////concatenando os opcionais
                    //foreach (XElement opcional in element.Descendants("opcionais").Descendants())
                    //{
                    //    // Adicionando 
                    //    opcionais += opcional.Value + ", ";
                    //}
                    //veiculo.Opcionais = opcionais;

                    //string testeUrl = (element.Element("Fotos").Element("Foto").Element("URLArquivo").Value).ToString();

                    // Recuperando a url das fotos do carro

                    bool found = false;
                    foreach (XElement foto in element.Descendants("Fotos").Descendants("Foto"))
                    {
                        // Adicionando
                        veiculo.Fotos.Add(foto.Element("URLArquivo").Value);
                        found = true;
                    }
                    if (!found)
                    {
                        veiculo.Fotos.Add("http://www.clienteparasempre.com.br/SiteSimplesAdmin/FotosEstoque/null.jpg");

                    }

                    // Adicionando dados à lista de veículos
                    veiculos.Add(veiculo);
                }

                // Retornando a lista de veículos
                return veiculos;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Retorna a lista de veículos do estoque a partir do XML
        /// </summary>
        /// <returns></returns>
        public List<Veiculo> GetVeiculos(string marca, decimal valorMinimo, decimal valorMaximo)
        {
            try
            {
                // Lista de veícculos para retornar
                List<Veiculo> veiculos = new List<Veiculo>();
                Veiculo veiculo;
                string opcionais;

                // Endereço do arquivo XML
                //string fileAddress = "http://www.clienteparasempre.com.br/autoprimeford//XML/1639.xml";
                string fileAddress = "http://www.cps21.com.br/estoque_autoweb/1639.xml";

                // Leitura dos veículos do XML apenas usados
                XDocument docXML = XDocument.Load(fileAddress);

                List<XElement> el = new List<XElement>();
                //Busca de veículos(TODOS SEM RESTRIÇÃO)
                if (marca == "" && valorMinimo == 0 && valorMaximo > 0)
                {
                    el =
                    docXML.Element("CargaVeiculos")
                        .Descendants("Veiculos")
                        .Descendants("Veiculo")
                        .Where(vcl =>
                            EPlacaValida(vcl.Element("Placa").Value) == true)
                        .OrderBy(vcl => vcl.Element("Preco").Value.Replace('.', ','))
                        .ToList();
                }
                //Busca de veículos(COM RESTRIÇÕES - MARCA, Valor Minimo, Valor Maximo)
                if (marca != "" && valorMinimo == 0 && valorMaximo > 0)
                {
                    el =
                    docXML.Element("CargaVeiculos")
                        .Descendants("Veiculos")
                        .Descendants("Veiculo")
                        .Where(vcl =>
                            EPlacaValida(vcl.Element("Placa").Value) == true &&
                            vcl.Element("Marca").Value == marca &&
                            decimal.Parse(vcl.Element("Preco").Value.Replace('.', ',')) >= valorMinimo &&
                            decimal.Parse(vcl.Element("Preco").Value.Replace('.', ',')) <= valorMaximo)
                        .OrderBy(vcl => vcl.Element("Preco").Value.Replace('.', ','))
                        .ToList();
                }
                // Compondo a lista de veículos a partir do XML
                foreach (XElement element in el)
                {
                    // Instanciando um novo objeto para o veículo
                    veiculo = new Veiculo();
                    veiculo.Fotos = new List<string>();

                    // Compondo dados do veículo
                    veiculo.Id = element.Element("CodigoVeiculo").Value;
                    veiculo.Placa = element.Element("Placa").Value;
                    veiculo.Valor = decimal.Parse(element.Element("Preco").Value.Replace('.', ','));
                    veiculo.Marca = element.Element("Marca").Value;
                    veiculo.Modelo = element.Element("Modelo").Value;
                    veiculo.Cor = element.Element("Cor").Value;
                    veiculo.Versao = element.Element("Versao").Value;
                    veiculo.AnoFabricacao = element.Element("AnoFabricacao").Value;
                    veiculo.AnoModelo = element.Element("AnoModelo").Value;
                    //veiculo.Opcionais = element.Element("opcionais").Value;

                    // limpando variavel
                    opcionais = null;

                    ////concatenando os opcionais
                    //foreach (XElement opcional in element.Descendants("opcionais").Descendants())
                    //{
                    //    // Adicionando 
                    //    opcionais += opcional.Value + ", ";
                    //}
                    //veiculo.Opcionais = opcionais;

                    // Recuperando a url das fotos do carro
                    bool found = false;
                    foreach (XElement foto in element.Descendants("Fotos").Descendants("Foto"))
                    {
                        // Adicionando
                        veiculo.Fotos.Add(foto.Element("URLArquivo").Value);
                        found = true;
                    }
                    if (!found)
                    {
                        veiculo.Fotos.Add("http://www.clienteparasempre.com.br/SiteSimplesAdmin/FotosEstoque/null.jpg");

                    }

                    // Adicionando dados à lista de veículos
                    veiculos.Add(veiculo);

                }

                // Retornando a lista de veículos
                return veiculos;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Veiculo Get(string id)
        {
            try
            {
                // Lista de veícculos para retornar
                Veiculo veiculo = new Veiculo();
                string opcionais;

                // Endereço do arquivo XML
                //string fileAddress = "http://www.clienteparasempre.com.br/autoprimeford//XML/1639.xml";
                string fileAddress = "http://www.cps21.com.br/estoque_autoweb/1639.xml";

                // Leitura dos veículos do XML apenas usados
                XDocument docXML = XDocument.Load(fileAddress);
                XElement element =
                   docXML.Element("CargaVeiculos")
                       .Descendants("Veiculos")
                       .Descendants("Veiculo")
                       .Where(vcl => vcl.Element("Placa").Value == id)
                       .FirstOrDefault();


                // Compondo a lista de veículos a partir do XML
                if (element != null)
                {
                    // Instanciando um novo objeto para o veículo
                    veiculo = new Veiculo();
                    veiculo.Fotos = new List<string>();

                    // Compondo dados do veículo
                    veiculo.Id = element.Element("CodigoVeiculo").Value;
                    veiculo.Placa = element.Element("Placa").Value;
                    if (element.Element("Preco").Value == "")
                    {
                        veiculo.Valor = 0;
                    }
                    else
                    {
                        veiculo.Valor = decimal.Parse(element.Element("Preco").Value.Replace('.', ','));
                    }
                    veiculo.Marca = element.Element("Marca").Value;
                    veiculo.Modelo = element.Element("Modelo").Value;
                    veiculo.Cor = element.Element("Cor").Value;
                    veiculo.Versao = element.Element("Versao").Value;
                    veiculo.AnoFabricacao = element.Element("AnoFabricacao").Value;
                    veiculo.AnoModelo = element.Element("AnoModelo").Value;
                    veiculo.Combustivel = element.Element("Combustivel").Value;
                    veiculo.Transmissao = element.Element("Transmissao").Value;

                    // limpando variavel
                    opcionais = null;

                    //concatenando os opcionais
                    //foreach (XElement opcional in element.Descendants("opcionais").Descendants())
                    //{
                    //    // Adicionando 
                    //    opcionais += opcional.Value + ", ";
                    //}
                    //veiculo.Opcionais = opcionais;

                    bool found = false;
                    foreach (XElement foto in element.Descendants("Fotos").Descendants("Foto"))
                    {
                        // Adicionando
                        veiculo.Fotos.Add(foto.Element("URLArquivo").Value);
                        found = true;
                    }
                    if (!found)
                    {
                        veiculo.Fotos.Add("http://www.clienteparasempre.com.br/SiteSimplesAdmin/FotosEstoque/null.jpg");

                    }
                }

                // Retornando a lista de veículos
                return veiculo;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public List<Veiculo> GetVeiculosHome()
        {
            try
            {
                // Lista de veícculos para retornar
                List<Veiculo> veiculos = new List<Veiculo>();
                Veiculo veiculo;

                // Endereço do arquivo XML
                //string fileAddress = "http://www.clienteparasempre.com.br/autoprimeford//XML/1639.xml";
                string fileAddress = "http://www.cps21.com.br/estoque_autoweb/1639.xml";

                // Leitura dos veículos do XML apenas usados
                XDocument docXML = XDocument.Load(fileAddress);
                List<XElement> el =
                   docXML.Element("CargaVeiculos")
                       .Descendants("Veiculos")
                       .Descendants("Veiculo")
                       .Where(vcl => EPlacaValida(vcl.Element("Placa").Value) == true &&
                            vcl.Element("Fotos") != null)
                        .OrderBy(a => Guid.NewGuid())
                        .Take(4)
                       .ToList();

                // Compondo a lista de veículos a partir do XML
                foreach (XElement element in el)
                {
                    // Instanciando um novo objeto para o veículo
                    veiculo = new Veiculo();
                    veiculo.Fotos = new List<string>();

                    // Compondo dados do veículo
                    veiculo.Id = element.Element("CodigoVeiculo").Value;
                    veiculo.Placa = element.Element("Placa").Value;
                    if (element.Element("Preco").Value == "")
                    {
                        veiculo.Valor = 0;
                    }
                    else
                    {
                        veiculo.Valor = decimal.Parse(element.Element("Preco").Value.Replace('.', ','));
                    }
                    veiculo.Marca = element.Element("Marca").Value;
                    veiculo.Modelo = element.Element("Modelo").Value;
                    veiculo.Cor = element.Element("Cor").Value;
                    veiculo.Versao = element.Element("Versao").Value;
                    veiculo.AnoFabricacao = element.Element("AnoFabricacao").Value;
                    veiculo.AnoModelo = element.Element("AnoModelo").Value;

                    // Recuperando a url das fotos do carro
                    bool found = false;
                    foreach (XElement foto in element.Descendants("Fotos").Descendants("Foto"))
                    {
                        // Adicionando
                        veiculo.Fotos.Add(foto.Element("URLArquivo").Value);
                        found = true;
                    }
                    if (!found)
                    {
                        veiculo.Fotos.Add("http://www.clienteparasempre.com.br/SiteSimplesAdmin/FotosEstoque/null.jpg");

                    }

                    // Adicionando dados à lista de veículos
                    veiculos.Add(veiculo);

                }

                // Retornando a lista de veículos
                return veiculos;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// Retorna a lista de veículos do estoque a partir do XML
        /// </summary>
        /// <returns></returns>
        //public List<Marca> GetMarcas()
        //{
        //    try
        //    {
        //        // Lista de veícculos para retornar
        //        List<Marca> marcas = new List<Marca>();
        //        Marca marca;

        //        // Endereço do arquivo XML
        //        //string fileAddress = "http://www.clienteparasempre.com.br/autoprimeford//XML/1639.xml";
        //        string fileAddress = "http://www.cps21.com.br/estoque_autoweb/1639.xml";

        //        // Leitura dos veículos do XML apenas usados
        //        XDocument docXML = XDocument.Load(fileAddress);
        //        var dict =
        //           docXML.Element("CargaVeiculos")
        //               .Descendants("Veiculos")
        //               .Descendants("Veiculo")
        //               .Where(vcl => EPlacaValida(vcl.Element("Placa").Value) == true)
        //               .GroupBy(e => e.Element("Marca").Value)
        //               .ToDictionary(g => g.Key, g => g.ToList());

        //        marca = new Marca();
        //        marca.NomeMarca = "";
        //        marca.Quantidade = 0;
        //        marca.MarcaQuantidade = "Todas";
        //        marcas.Add(marca);

        //        // Compondo a lista de veículos a partir do XML
        //        foreach (var pair in dict)
        //        {
        //            marca = new Marca();
        //            marca.NomeMarca = pair.Key;
        //            marca.Quantidade = pair.Value.Count();
        //            marca.MarcaQuantidade = pair.Key + "(" + pair.Value.Count() + ")";

        //            marcas.Add(marca);
        //        }

        //        return marcas;

        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}

        /// <summary>
        /// Valida placa do veículo
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public bool EPlacaValida(string value)
        {
            Regex regex = new Regex(@"^[A-Z]{3}[0-9]{4}$");

            if (regex.IsMatch(value))
            {
                return true;
            }

            return false;
        }
    }
}