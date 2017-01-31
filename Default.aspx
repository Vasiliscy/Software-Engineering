<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="dbTeachers" Height="50px" Width="220px">
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="Teacher ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Topic_id" HeaderText="TopicNo." SortExpression="Topic_id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
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
        <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="dbTopics" Height="108px" Width="211px">
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="TopicNo." ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="dbTopics" runat="server" ConnectionString="<%$ ConnectionStrings:Software EngineeringConnectionString %>" DeleteCommand="DELETE FROM [Topics] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Topics] ([ID], [Name], [Description]) VALUES (@ID, @Name, @Description)" SelectCommand="SELECT * FROM [Topics]" UpdateCommand="UPDATE [Topics] SET [Name] = @Name, [Description] = @Description WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="dbStudents">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="Student ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="T_id" HeaderText="Teacher" SortExpression="T_id" />
                <asp:BoundField DataField="Name" HeaderText="Student Name" SortExpression="Name" />
                <asp:BoundField DataField="Surname" HeaderText="Student Surname" SortExpression="Surname" />
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
    
    </div>
    </form>
</body>
</html>
