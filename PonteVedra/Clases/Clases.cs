using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace Alarma.Clases
{
    public class SendObject_User
    {
        public string token { get; set; }
        public string user { get; set; }
        public string pass { get; set; }
        public string model { get; set; }
        public string manufacturer { get; set; }
        public string name { get; set; }
        public string version { get; set; }
        public string version_app { get; set; }
        public string platform { get; set; }
        public string devicetype { get; set; }
        public string width { get; set; }
        public string height { get; set; }
        public string lat { get; set; }
        public string lon { get; set; }
    }

    public class SendObject_Cambio_Clave
    {
        public string token { get; set; }
        public string pass_antigua { get; set; }
        public string pass_nueva { get; set; }
        public string pass_nueva_repeat { get; set; }
   
    }

    public class Usuario
    {
        public string cod { get; set; }
        public string username { get; set; }
        public string pass { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string nivel { get; set; }
        public string estado { get; set; }
    }

    public class RootObject
    {
        public string Sync { get; set; }
        public string Token { get; set; }
        public string NombreCompleto { get; set; }
    }

    public class SendObject_Ayuda
    {
        public string Token { get; set; }
        public string lat { get; set; }
        public string lon { get; set; }
    }

    public class SendObject_ConfirmarAyuda
    {
        public string Token { get; set; }
        public string Cod { get; set; }
    }

    public class SendObject_ValidarToken
    {
        public string Token { get; set; }
        public string Sync { get; set; }
    }

    public class RootObject_Ayuda
    {
        public string Sync { get; set; }
        public string Save { get; set; }
    }

    public class ListadoAyudas
    {
        [PrimaryKey, AutoIncrement]
        public int ID { get; set; }
        public string Codigo { get; set; }
        public string Fecha { get; set; }
        public string FechaMostrar { get; set; }
        public bool Estado { get; set; }
        public int Pos { get; set; }
    }

    public class ListadoFotos
    {
        public int ID { get; set; }
        public string ruta { get; set; }
        public string foto { get; set; }
        public string origen { get; set; }
    }

    public class SendObject_ReportarNovedad
    {
        public string Token { get; set; }
        public string Novedad { get; set; }
        public string lat { get; set; }
        public string lon { get; set; }
        public List<ListadoFotos> Fotos { get; set; }
    }

    public class RootObject_ReportarNovedad
    {
        public string Sync { get; set; }
        public string Save { get; set; }
    }
}
