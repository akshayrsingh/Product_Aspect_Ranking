<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Result.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div>
        <h3 style="background: none !important;">
            Result of
            <%=ProductInfo.ProductName %></h3>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black"
            AllowSorting="true" Width="100%" GridLines="Horizontal" OnSorting="GridView1_Sorting"
            OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:BoundField DataField="Feature" HeaderText="Ranked Feature" SortExpression="Feature">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="PositivePolarity" HeaderText="Positive Score" SortExpression="PositivePolarity">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="NegativePolarity" HeaderText="Negative Score" SortExpression="NegativePolarity">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
              <%--  <asp:BoundField DataField="Feature" HeaderText="constructive opinion" SortExpression="Feature">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>--%>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </div>
    <div>
        <div>
            <h3>
                Graph</h3>
        </div>
        <br />
        <asp:Chart ID="Chart1" runat="server" Width="325px">
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Series>
                <asp:Series IsValueShownAsLabel="true" Name="Series1" BorderColor="180, 26, 59, 105"
                    ChartType="Pie">
                </asp:Series>
            </Series>
        </asp:Chart>
    </div>
    <table style="width: 300px;">
        <tr>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#418CF0" BorderColor="#418CF0"></asp:TextBox>
            </td>
            <td>
                Positive
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#FCB441" BorderColor="#FCB441"></asp:TextBox>
            </td>
            <td>
                Negative
            </td>
        </tr>
    </table>
    <br />
    <h2>
        <asp:Label ID="lblShow" runat="server" Text=""></asp:Label>
    </h2>
</asp:Content>
