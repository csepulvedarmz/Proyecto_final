<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="web form.aspx.cs" Inherits="Proyecto_final.web_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html"; charset= "utf-8" />
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="Recursos/CSS/Estilos.css" rel="stylesheet"/>
    <title>Login</title>
</head>
<body class="bg-light">
    <div class="wrapper">
        <div class="formcontent">
            <form id="formulario_login" runat="server">
                <div class="form-control">
                    <div class="col-mid-6 text-center mb-5">
                        <asp:Label  class="h3" ID="lblBienvenida" runat="server" Text="Bienvenido Usuario"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
                        <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="Nombre de Usuario"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="tbPassword" CssClass="form-control" runat="server" placeholder="Contraseña"></asp:TextBox>
                        <hr />

                    </div>
                    <div class="row">
                        <asp:Label ID="lblError" runat="server"></asp:Label>

                    </div>
                    <hr />
                    <div class="row">

                        <asp:Button ID="BtnIngresar" CssClass="btn btn-primary btn-dark" runat="server" Text="Ingresar" OnClick="BtnIngresar_Click"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
   
</body>
</html>
