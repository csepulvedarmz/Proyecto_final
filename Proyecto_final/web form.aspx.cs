using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_final
{
    public partial class web_form : System.Web.UI.Page
    {
        readonly string patron = "Login";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("VerificarUsuarioContrasenia")
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@Nombre_Usuario", SqlDbType.VarChar,50).Value= tbUsuario.Text; 
            cmd.Parameters.Add("@Contrasenia", SqlDbType.VarChar,50).Value= tbPassword.Text;
            cmd.Parameters.Add("@StoredHash", SqlDbType.VarChar,50).Value= patron;
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                lblError.Text = "Usuario o contraseña incorrectos";
            }
        }
    }
}