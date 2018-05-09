<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Review.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            height: 44px;
        }
        .style2
        {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table style="width: 776px">
        <tr>
            <td class="style1">
            </td>
            <td class="style1" style="color: #0000FF">
                Category Name
            </td>
            <td class="style1" style="color: #0000FF">
                Brand Name
            </td>
            <td class="style1" style="color: #0000FF">
                Product Name
            </td>
        </tr>
        <tr>
            <td class="style2" style="color: #0000FF">
                Select Product:
            </td>
            <td class="style2">
                <asp:DropDownList ID="ddlcategory" Height="28px" Width="175px" AutoPostBack="True"
                    runat="server" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="150px" AutoPostBack="True"
                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="28px" Width="250px" AutoPostBack="True"
                    DataTextField="pName" DataValueField="pId" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" />
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit"
                    Width="103px" Font-Bold="True" Font-Size="Medium" BackColor="#FFCCCC" 
                    Height="39px" />
            </td>
            <td>
            </td>
        </tr>
    </table>
    <div>
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
    </div>
    <div>
        <asp:TextBox ID="txtPara" runat="server" Height="132px" Width="926px" TextMode="MultiLine"></asp:TextBox></div>
    <div>
        <br />
        <asp:Button ID="btnPos" runat="server" Height="40px" Width="134px" OnClick="btnPos_Click"
            Text="POS Taging" Font-Bold="True" />
        <br />
        <br />
        <asp:Button ID="btnFeature" runat="server" Height="35px" Width="134px" OnClick="btnFeature_Click"
            Text="Feature Score" Font-Bold="True" />
        <br />
    </div>
</asp:Content>
