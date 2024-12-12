﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaMedico.aspx.cs" Inherits="Vistas.BajaMedico" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../Estilos/Estilos.css" rel="stylesheet" type="text/css" />
         <style>
            
         </style>
</head>
<body>
    <form id="form1" runat="server">
          <header>
              <p>Clinica Pacheco</p>
              <nav>
                  <ul class="nav-bar">
                     <li>
                         <a>
                            <asp:HyperLink ID="hlInicio" runat="server" NavigateUrl="~/Inicio/InicioAdministrador.aspx">Inicio</asp:HyperLink>
                         </a>
                     </li>
                      <li>
                          <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
                          <asp:Label ID="lblUsuarioEnSesion" runat="server" CssClass="auto-style1"></asp:Label>
                      </li>
                      <li>
                          <asp:Button ID="btnCerrarSesion" runat="server" Text="Cerrar Sesion" CssClass="btn-cerrar-sesion" OnClick="btnCerrarSesion_Click" />
                      </li>
                  </ul>
              </nav>
          </header>
        <div class="wrapper">
            <h1><asp:Label ID="lblTitulo" runat="server" Font-Size="XX-Large" Text="Baja Médico"></asp:Label></h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblBuscarPorLegajo" runat="server" Text="Legajo medico:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtBuscarPorLegajo" runat="server" CssClass="auto-style5" placeholder="Legajo"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvLegajoMEdico" runat="server" ControlToValidate="txtBuscarPorLegajo">*Completar campo</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <div class="botones-container">
            <table>
                <tr>
                    <td class="auto-style3">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn" OnClick="btnBuscar_Click" />
                <asp:Button ID="btnResetear" runat="server" Text="Resetear" CssClass="btn" OnClick="btnResetear_Click" />

                        <asp:GridView ID="grdMedicosBaja" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" OnRowDeleting="grdMedicosBaja_RowDeleting">
                            <Columns>
                                <asp:TemplateField HeaderText="Legajo">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_LegajoMedico" runat="server" Text='<%# Eval("Legajo_med") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nombre">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Nombre_med" runat="server" Text='<%# Eval("Nombre_med") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Apellido">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Apellido_med" runat="server" Text='<%# Eval("Apellido_med") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
               </tr>
            </table>
            </div>
        </div>
    </form>
</body>
</html>
