using System;
using SQLite;

namespace Alarma.Clases
{
    public class DatosUser
    {
        [PrimaryKey, AutoIncrement]
        public int ID { get; set; }
        public string User { get; set; }
        public string Pass { get; set; }
        public string NombreCompleto { get; set; }
        public DateTime Date { get; set; }
        public string Token { get; set; }
    }
}
