<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SummaryBD.aspx.cs" Inherits="asp_sharp_intro.SummaryBD" MasterPageFile="~/Site.master" %>
<%@ Import Namespace="asp_sharp_intro" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:CheckBoxField DataField="WillAttend" HeaderText="WillAttend" ReadOnly="True" SortExpression="WillAttend" />
                <asp:BoundField DataField="Rdata" HeaderText="Registration date" ReadOnly="True" SortExpression="Rdata" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" ReadOnly="True" SortExpression="Phone" />
                <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="SampleContext" EntityTypeName="" Select="new (WillAttend, Rdata, Reports, Phone, Name, Email)" TableName="GuestResponses">
        </asp:LinqDataSource>

    </asp:Content>