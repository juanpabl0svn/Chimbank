using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
using System.Text;

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

        public void Insertar(string nit,string numero_cuenta, string nombre, string apellido, string correo, string clave, double dinero)
        {
            try
            {
                cmd = new SqlCommand("INSERT INTO dbo.usuario (nit, numero_cuenta, nombre, apellido, correo, clave, dinero,Prestamo) " +
                    "values ('"+nit+ "', '"+ numero_cuenta+"' ,'" + nombre+ "','"+apellido+ "','"+correo+"','"+clave+"',"+dinero+", )", cn);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);

            }

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
            SqlDataAdapter da = new SqlDataAdapter();

            cmd = new SqlCommand("Select * from dbo.movimientos where enviado = '" + Usuario.user.Numero_cuenta + "' OR recibido = '" + Usuario.user.Numero_cuenta + "'", cn);
            rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {
                escribir.AppendLine($"Transaccion enviada por {rdr["enviado"].ToString()} y recibida por {rdr["recibido"].ToString()}.");
                escribir.AppendLine($"La transaccion tuvo un valor de {rdr["valor"].ToString()} y fue realizada el {rdr["fecha"].ToString()} a las {rdr["hora"].ToString()}");
                if (rdr["enviado"].ToString() == Usuario.user.Numero_cuenta)
                {
                    escribir.AppendLine($"+ {rdr["Valor"].ToString()}");
                }
                else
                {
                    escribir.AppendLine($"- {rdr["Valor"].ToString()}");
                }
                escribir.AppendLine("---------------------------------------------------------------------");
            }

            rdr.Close();

            return escribir;

            


        }
    
    }
}
