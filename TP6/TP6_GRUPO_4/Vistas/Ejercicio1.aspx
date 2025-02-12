﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP6_GRUPO_4.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblEjercicio1" runat="server" Font-Size="XX-Large" Text="Ejercicio 1"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlInicio" runat="server" NavigateUrl="~/Vistas/Inicio.aspx">Inicio</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="lblProductos" runat="server" Font-Size="XX-Large" Text="Productos"></asp:Label>
            <br />
            <asp:GridView ID="grdProductos" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AllowPaging="True" OnPageIndexChanging="grdProductos_PageIndexChanging" OnRowCancelingEdit="grdProductos_RowCancelingEdit" OnRowDeleting="grdProductos_RowDeleting" OnRowEditing="grdProductos_RowEditing" OnRowUpdating="grdProductos_RowUpdating" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:TemplateField HeaderText="ID Producto">
                        <EditItemTemplate>
                            <asp:Label ID="lbl_idProducto" runat="server" Text='<%# Bind("IdProducto") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblIDProducto" runat="server" Text='<%# Bind("IdProducto") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre Producto">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_edit_nombreProducto" runat="server" Text='<%# Bind("NombreProducto") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblNombreProducto" runat="server" Text='<%# Bind("NombreProducto") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cantidad por Unidad">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_edit_CantidadPorUnidad" runat="server" Text='<%# Bind("CantidadPorUnidad") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblCantidadPorUnidad" runat="server" Text='<%# Bind("CantidadPorUnidad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Precio Unitario">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_edit_precioUnidad" runat="server" Text='<%# Bind("PrecioUnidad") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblPrecioUnitario" runat="server" Text='<%# Bind("PrecioUnidad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
