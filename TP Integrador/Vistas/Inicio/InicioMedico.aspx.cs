﻿using Entidades;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Inicio
{
    public partial class InicioMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ESTE CODIGO CONTROLA EL MANEJO DEL SISTEMA DE ROLES EN CADA VISTA 

            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            if (usuario == null || !usuario.EsMedico())
            {
                Response.Redirect("AccesoDenegado.aspx");
            }
            else
            {
                Usuario usuarioLogueado = Session["UsuarioLogueado"] as Usuario;
                if (usuarioLogueado != null)
                {
                    // Muestra el nombre de usuario en la etiqueta de la barra de navegacion
                    lblUsuarioEnSesion.Text = usuarioLogueado.NombreUsuario;
                }
            }

        }
        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("InicioSesion.aspx");
        }
    }
}