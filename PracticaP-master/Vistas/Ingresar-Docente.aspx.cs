using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using Npgsql;

namespace Vistas
{
    public partial class Ingresar_Docente : System.Web.UI.Page
    {
        public Docente docente;
        public NegocioDocente negocio = new NegocioDocente();
        public string mensaje;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
                Response.Redirect("inicio.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {

            try
            {
                int Dni = Convert.ToInt32(txtDni.Text);
                if (negocio.verificarDni(Dni) == false) {

                     FUCurriculum.SaveAs(Server.MapPath("~/Curriculums/" + FUCurriculum.FileName));
                    FUFoto.SaveAs(Server.MapPath("~/img/" + FUFoto.FileName));
                    negocio.create(Dni, ddTipo.SelectedValue, txtNombre.Text, txtApellido.Text, txtEmail.Text, txtTelefono.Text, txtDireccion.Text, txtNacimiento.Text, "~/img/" + FUFoto.FileName, "~/Curriculums/" + FUCurriculum.FileName);

                    Response.Redirect("Docentes.aspx");
                    
                }
                else { lblDni.Text = "DNI ya existente";
                   
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            
            ddTipo.ClearSelection();
            txtNombre.Text = " ";
            txtApellido.Text = " ";
            txtEmail.Text = " ";
            txtTelefono.Text = " ";
            txtDireccion.Text = " ";
            txtNacimiento.Text = " ";



        }
        /*
         protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                int Dni = Convert.ToInt32(txtDni.Text);
                docente.Dni = Dni;
                docente.Apellido = txtApellido.Text;
                docente.Cv = txtCv.Text;
                docente.Direccion = txtDireccion.Text;
                docente.Nombre = txtNombre.Text;
                docente.Email = txtEmail.Text;
                docente.Telefono = txtTelefono.Text;
                docente.FechaNacimiento = DateTime.Parse(txtNacimiento.Text);
                docente.FotoPerfil = txtFoto.Text;
                docente.Tipo = ddTipo.SelectedValue;
                negocio.update(docente);
                Response.Redirect("Docentes.aspx");
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        */
    }
}