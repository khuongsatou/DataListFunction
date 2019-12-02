<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="test.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="username" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    username:
                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                    <br />
                    pass:
                    <asp:Label ID="passLabel" runat="server" Text='<%# Eval("pass") %>' />
                    <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    email:
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    <br />
                    phone:
                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                    <br />
                    role:
                    <asp:Label ID="roleLabel" runat="server" Text='<%# Eval("role") %>' />
                    <br />
                    status:
                    <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                    <br />
                    <asp:Button ID="xoa" runat="server" CommandName="x" Text="xoa" />
                    <asp:Button ID="Button2" runat="server" Text="Button" />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RauConnectionString %>" DeleteCommand="DELETE FROM [member] WHERE [username] = @username" InsertCommand="INSERT INTO [member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (@username, @pass, @name, @email, @phone, @role, @status)" SelectCommand="SELECT * FROM [member]" UpdateCommand="UPDATE [member] SET [pass] = @pass, [name] = @name, [email] = @email, [phone] = @phone, [role] = @role, [status] = @status WHERE [username] = @username">
                <DeleteParameters>
                    <asp:Parameter Name="username" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="pass" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="role" Type="Int32" />
                    <asp:Parameter Name="status" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pass" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="role" Type="Int32" />
                    <asp:Parameter Name="status" Type="Int32" />
                    <asp:Parameter Name="username" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
