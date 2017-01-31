<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Students.aspx.vb" Inherits="Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="dbStudents">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="Student ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="T_id" HeaderText="Teacher" SortExpression="T_id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="dbStudents" runat="server" ConnectionString="<%$ ConnectionStrings:Software EngineeringConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Students] ([ID], [T_id], [Name], [Surname]) VALUES (@ID, @T_id, @Name, @Surname)" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [T_id] = @T_id, [Name] = @Name, [Surname] = @Surname WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="T_id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="T_id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="dbTeachers">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="Teacher ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Topic_id" HeaderText="Topic" SortExpression="Topic_id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="dbTeachers" runat="server" ConnectionString="<%$ ConnectionStrings:Software EngineeringConnectionString %>" DeleteCommand="DELETE FROM [Teachers] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Teachers] ([ID], [Topic_id], [Name], [Surname]) VALUES (@ID, @Topic_id, @Name, @Surname)" SelectCommand="SELECT * FROM [Teachers]" UpdateCommand="UPDATE [Teachers] SET [Topic_id] = @Topic_id, [Name] = @Name, [Surname] = @Surname WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Topic_id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Topic_id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
