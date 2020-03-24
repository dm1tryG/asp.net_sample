<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="asp_sharp_intro.Summary" MasterPageFile="~/Site.master" %>

<%@ Import Namespace="asp_sharp_intro" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div>
        <h2>Приглашения</h2>
        <h3>Выступающие с докладом: </h3>
        <table class="wrap">
            <thead>
                <tr>
                    <th>Имя</th>
                    <th>Email</th>
                    <th>Телефон</th>
                </tr>
            </thead>
            <tbody>
                <%= GetNoShowHtml()%>
            </tbody>
        </table>
    </div>

</asp:Content>
