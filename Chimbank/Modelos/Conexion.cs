using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
using System.Text;
using System.Security.Claims;
using System.Drawing;
using Microsoft.SqlServer.Server;

namespace Chimbank
{
    public class Conexion
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader rdr;

        //Al instanciar crea la conexion
        public Conexion()
        {
            try
            {
                cn = new SqlConnection("Data Source=DESKTOP-RPNU9DB;Initial Catalog=CHIMBANK;Integrated Security=True");
                cn.Open();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);

            }
        }

        public void Insertar(string nit,string numero_cuenta, string nombre, string apellido, string correo, string clave)
        {

            cmd = new SqlCommand("INSERT INTO dbo.usuario (nit, numero_cuenta, nombre, apellido, correo, clave, dinero ,credito) " +
                "values ('"+nit+ "', '"+ numero_cuenta+"' ,'" + nombre+ "','"+apellido+ "','"+correo+"','"+clave+"','','')", cn);
            cmd.ExecuteNonQuery();

        }

        //Ya existe un usuario con la misma identificacion
        public bool UsuarioYaExisteId(string nit)
        {
            bool existe = false;
            cmd = new SqlCommand("Select * from dbo.usuario where nit = '" + nit + "'", cn);
            rdr = cmd.ExecuteReader();
            
            if (rdr.Read())
            {
                existe = true;
            }

            rdr.Close();

            return existe;

        }

        //Ya existe un usuario con el correo ingresado
        public bool UsuarioYaExisteCorreo(string correo)
        {
            bool existe = false;
            cmd = new SqlCommand("Select * from dbo.usuario where correo = '" + correo + "'", cn);
            rdr = cmd.ExecuteReader();
            
            if (rdr.Read())
            {
                existe = true;
            }

            rdr.Close();

            return existe;

        }

        //Numero de cuenta ya existe
        public bool CuentaYaExiste(int numeroCuenta)
        {
            bool existe = false;
            cmd = new SqlCommand("Select * from dbo.usuario where numero_cuenta = '" + numeroCuenta + "'", cn);
            rdr = cmd.ExecuteReader();

            if (rdr.Read())
            {
                existe = true;
            }
            rdr.Close();

            return existe;

        }

        //Extrae la informacion del usuario
        public void InfoUsuario(string correoUsuario)
        {
            {
                Usuario Persona = new Usuario();
                cmd = new SqlCommand("Select * from dbo.usuario where correo = '" + correoUsuario + "'", cn);
                rdr = cmd.ExecuteReader();

                if (rdr.Read())
                {
                    string nit = rdr["nit"].ToString();
                    string numero_cuenta = rdr["numero_cuenta"].ToString();
                    string nombre = rdr["nombre"].ToString();
                    string apellido = rdr["apellido"].ToString();
                    string correo = rdr["correo"].ToString();
                    string clave = rdr["clave"].ToString();
                    string dinero = rdr["dinero"].ToString();
                    string credito = rdr["credito"].ToString();

                    Persona = new Usuario(nit,numero_cuenta ,nombre, apellido, correo, clave , double.Parse(dinero), double.Parse(credito));

                }
                rdr.Close();

                Usuario.user = Persona;

            }

        }

        //Busca usuario y si lo encuentra, retorna el correo para sacar sus datos
        public string BuscarUsuario(string correo, string clave)
        {
            string existe = "";
            cmd = new SqlCommand("Select * from dbo.usuario where correo = '" + correo + "' AND clave = '" + clave + "'", cn);
            rdr = cmd.ExecuteReader();

            if (rdr.Read())
            {
                existe = correo;
            }

            rdr.Close();

            return existe;

        }

        //Ingresa los movimientos que ha o que le han hecho al usuario
        public StringBuilder Transacciones()
        {
            StringBuilder escribir = new StringBuilder();

            cmd = new SqlCommand("Select * from dbo.movimientos where enviado = '" + Usuario.user.Numero_cuenta + "' OR recibido = '" + Usuario.user.Numero_cuenta + "'", cn);
            rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {
                if (rdr["enviado"].ToString() == Usuario.user.Numero_cuenta)
                {
                    escribir.AppendLine($"- {rdr["Valor"].ToString()}");
                }
                else
                {
                    escribir.AppendLine($"+ {rdr["Valor"].ToString()}");
                }
                escribir.AppendLine("---------------------------------------------------------------------");
            }

            rdr.Close();

            return escribir;

            


        }

        //Retorna el numero de las cuentas guardads por el usuario
        public List<string> MostrarFavoritos()
        {
            List<string> favoritos = new List<string>();
            cmd = new SqlCommand("Select * from dbo.cuentas_guardadas where usuario = '" + Usuario.user.Numero_cuenta + "'", cn);
            rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {
                favoritos.Add(rdr["Cuenta"].ToString());
            }

            rdr.Close();

            return favoritos;

        }

        //Retorna la informacion de la cuenta guardada
        public List<string> InfousuarioFav(string numero_cuenta)
        {
            List<string> info = new List<string>();

            cmd = new SqlCommand("Select * from dbo.cuentas_guardadas where cuenta = '" + numero_cuenta + "'", cn);
            rdr = cmd.ExecuteReader();

            if (rdr.Read())
            {
                info.Add(rdr["Cuenta"].ToString());
                info.Add(rdr["nit"].ToString());
                info.Add(rdr["nombre"].ToString());
            }

            rdr.Close();

            return info;


        }

        //Realiza la transferencia y cambia los valores del dinero
        public void Hacer_transferencia(string numero_cuenta, double valor)
        {
            double nuevo_valor = valor;
            cmd = new SqlCommand("Select * from dbo.usuario where numero_cuenta = '" + numero_cuenta + "'", cn);
            rdr = cmd.ExecuteReader();

            if (rdr.Read())
            {

                nuevo_valor += double.Parse(rdr["dinero"].ToString());

            }

            rdr.Close();
            

             
            cmd = new SqlCommand("UPDATE dbo.usuario SET dinero='" +  nuevo_valor + "' where numero_cuenta = '" + numero_cuenta + "'", cn);
            rdr = cmd.ExecuteReader();

            rdr.Close();

            Usuario.user.Dinero = Usuario.user.Dinero - valor;

            cmd = new SqlCommand("UPDATE dbo.usuario SET dinero='" + Usuario.user.Dinero + "' where numero_cuenta = '" + Usuario.user.Numero_cuenta + "'", cn);
            rdr = cmd.ExecuteReader();

            rdr.Close();

            CrearMovimiento(numero_cuenta,valor);

        }


        public void CrearMovimiento(string recibido , double valor)
        {

            cmd = new SqlCommand("Insert into dbo.movimientos (enviado, recibido, valor) values ('" + Usuario.user.Numero_cuenta + "','" + recibido + "'," + valor + ")", cn);
            cmd.ExecuteNonQuery();

            rdr.Close();

        }

        public bool CuentaExisteTransferir(string numero_cuenta, string nit)
        {
            bool encontrado = false;
            cmd = new SqlCommand("Select * from dbo.usuario where numero_cuenta = '" + numero_cuenta + "'AND nit = '" + nit + "' ", cn);
            rdr = cmd.ExecuteReader();

            if (rdr.Read())
            {
                encontrado = true;

            }

            rdr.Close();

            return encontrado;

        }

        public bool CuentaExisteGuardar(string numero_cuenta, string nit)
        {
            bool encontrado = false;
            cmd = new SqlCommand("Select * from dbo.cuentas_guardadas where cuenta = '" + numero_cuenta + "'AND nit = '" + nit + "' ", cn);
            rdr = cmd.ExecuteReader();

            if (rdr.Read())
            {
                encontrado = true;

            }

            rdr.Close();

            return encontrado;

        }

        public void GuardarFavorito(string numero_cuenta, string nit, string nombre)
        {

            cmd = new SqlCommand("Insert into dbo.cuentas_guardadas (usuario, cuenta, nit, nombre) values ('" + Usuario.user.Numero_cuenta + "','" + numero_cuenta + "'," + nit + ",'" + nombre + "')", cn);
            cmd.ExecuteNonQuery();

        }
    
    }
}
