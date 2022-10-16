using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Chimbank
{
    public class Usuario
    {
        public static Usuario user = new Usuario();

        public Usuario()
        {

        }

        public Usuario(string nit, string numero_cuenta, string nombre, string apellido, string correo, string clave, double dinero, double credito)
        {
            this.Nit = nit;
            this.Numero_cuenta = numero_cuenta;
            this.Nombre = nombre;
            this.Apellido = apellido;
            this.Correo = correo;
            this.Clave = clave;
            this.Dinero = dinero;
            this.Credito = credito;
        }


        string nit, nombre, apellido, correo,clave,numero_cuenta;
        double dinero, credito;

        public string Nit { get => nit; set => nit = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Correo { get => correo; set => correo = value; }       
        public string Numero_cuenta { get => numero_cuenta; set => numero_cuenta = value; }
        public double Dinero { get => dinero; set => dinero = value; }
        public double Credito { get => credito; set => credito = value; }
        public string Clave { get => clave; set => clave = value; }
    }
}