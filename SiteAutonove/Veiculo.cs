using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SiteAutonove
{
    public class Veiculo
    {
        public string Id { get; set; }
        public string Loja { get; set; }
        public string Tipo { get; set; }
        public string Marca { get; set; }
        public string Modelo { get; set; }
        public string Versao { get; set; }
        public string Cor { get; set; }
        public string Combustivel { get; set; }
        public string AnoModelo { get; set; }
        public string AnoFabricacao { get; set; }
        public string Placa { get; set; }
        public string Chassi { get; set; }
        public string Km { get; set; }
        public string DiasEmEstoque { get; set; }
        public decimal Valor { get; set; }
        public string Opcionais { get; set; }
        public string DataInclusao { get; set; }
        public List<string> Fotos { get; set; }
        public string Transmissao { get; set; }
    }
}