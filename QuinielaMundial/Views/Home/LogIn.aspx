<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void BtnRegistrar_Click(object sender, EventArgs e)
    {
        QuinielaMundial.Dao.Usuarios usuario = new QuinielaMundial.Dao.Usuarios();
    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    LogIn
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>LogIn</h2>

    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <th colspan="3">
                    Registration
                </th>
            </tr>
            <tr>
                <td>
                    A. Paterno
                </td>
                <td>
                    <asp:TextBox ID="TxtPaterno" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="Obligatorio" ForeColor="Red" ControlToValidate="TxtPaterno"
                                                runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    A. Materno
                </td>
                <td>
                    <asp:TextBox ID="TxtMaterno" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="Obligatorio" ForeColor="Red" ControlToValidate="TxtMaterno"
                                                runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Nombre
                </td>
                <td>
                    <asp:TextBox ID="TxtNombre" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="Obligatorio" ForeColor="Red" ControlToValidate="TxtNombre"
                                                runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Username
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Obligatorio" ForeColor="Red" ControlToValidate="txtUsername"
                                                runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Obligatorio" ForeColor="Red" ControlToValidate="txtPassword"
                                                runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password
                </td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                                          ControlToValidate="txtConfirmPassword" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="Obligatorio" Display="Dynamic" ForeColor="Red"
                                                ControlToValidate="txtEmail" runat="server" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                    ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Dirección de correo inválida." />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    
                    <asp:Button ID="BtnRegistrar" Text="Submit" runat="server" OnClick="BtnRegistrar_Click"   />
                </td>
                <td>
                </td>
            </tr>
        </table>
    </form>

</asp:Content>
