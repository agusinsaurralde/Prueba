using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class Inicio : System.Web.UI.Page
    {
        public Usuario usuario;
        public NegocioUsuario negocioUsuario = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["logout"] == "1")
            {
                Session.Clear();
            }
            if (Session["usuario"]!=null)
            {
                //usuario = (Usuario)Session["usuario"]; 
                Response.Redirect("Docentes.aspx");

            }
        }
        protected void OnClickBtnAceptar(object sender, EventArgs e)
        {
            try
            {
                string nombreUsuario = txtUsuario.Text;
                string password = txtPassword.Text;
                usuario = negocioUsuario.login(nombreUsuario, password);
                if (usuario!=null) 
                    Session.Add("usuario",usuario);
                Response.Redirect("Inicio.aspx");
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
       
    }
}