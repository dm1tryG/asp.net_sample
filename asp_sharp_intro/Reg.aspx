<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="asp_sharp_intro.Reg" MasterPageFile="~/Site.master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div>
        <h1>Приглашаем на семинар</h1>
        <p></p>
    </div>
        <div>
 <label>Ваше имя:</label><asp:TextBox ID="name" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
 ControlToValidate="name"
 ErrorMessage="Заполните поле имени"
19
 ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
</div>
        <div>
 <label>Ваш email:</label><asp:TextBox ID="email"
runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
ControlToValidate="email" ErrorMessage="Заполните поле адреса" ForeColor="Red">Не
оставляйте поле пустым</asp:RequiredFieldValidator>
 </div>

 <div>
 <label>Ваш телефон:</label><asp:TextBox ID="phone"
runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
ControlToValidate="phone" ErrorMessage="Заполните поле ввода телефона" ForeColor="Red">Не
оставляйте поле пустым</asp:RequiredFieldValidator>
 </div>    <asp:RegularExpressionValidator runat="server" ControlToValidate="email"
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
ErrorMessage="E-mail is not in a valid format" Display="Dynamic"
ForeColor="Red">Адрес введен неверно!!!</asp:RegularExpressionValidator>
        <asp:ValidationSummary ID="validationSummary" runat="server"
ShowModelStateErrors="true" />
 <div>
     <label>Вы будете делать доклад?</label>
     <asp:CheckBox ID="CheckBoxYN" runat="server" />
      <div>
 Введите название доклада:
 <asp:TextBox ID="TextBoxTitle" runat="server"
Width="345px"></asp:TextBox>
 </div>
 <div>
 Введите аннотацию доклада:
 <asp:TextBox ID="TextBoxTextAnnot" runat="server"
Width="345px"></asp:TextBox>
 </div>
 
 <div>
 Введите название доклада:
 <asp:TextBox ID="TextBoxTitle2" runat="server"
Width="345px"></asp:TextBox>
 </div>
 <div>
 Введите аннотацию доклада:
 <asp:TextBox ID="TextBoxTextAnnot2" runat="server"
Width="345px"></asp:TextBox>
</div>
 </div>
        <div>
            <button type="submit">
                Отправить ответ на приглашение
RSVP</button>
        </div>
</asp:Content>
