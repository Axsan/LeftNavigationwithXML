<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TreeViewNavigation.aspx.cs" Inherits="LeftNavigation.TreeViewNavigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maintenance</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TreeView runat="server" ExpandImageUrl="Images/minus.gif" CollapseImageUrl="Images/plus.gif" OnTreeNodePopulate="Unnamed_TreeNodePopulate" ID="Maintenance"> 
            <Nodes>
                <%--<asp:TreeNode Text="Barcode Maintenance" PopulateOnDemand="true" Value="0"></asp:TreeNode>--%>
            </Nodes>
        </asp:TreeView>
    
    </div>
        <div>
        <h2 style="color:MidnightBlue; font-style:italic;">      
            Document Upload
        </h2>      
        <hr width="450" align="left" color="Gainsboro" />
        <asp:XmlDataSource 
            ID="XmlDataSource1" 
            runat="server" 
            DataFile="~/App_Data/DocumentUpload.xml"
            >
        </asp:XmlDataSource>
        <asp:TreeView 
            ID="TreeView2" 
            runat="server" 
            DataSourceID="XmlDataSource1"
            >
            <DataBindings>
                <asp:TreeNodeBinding 
                    DataMember="LeftNav" 
                    Text="DocumentUpload"
                    />
                <asp:TreeNodeBinding 
                    DataMember="Item" 
                    TextField="Name"
                    />
                <asp:TreeNodeBinding 
                    DataMember="Option" 
                    TextField="Control"
                    />
            </DataBindings>
        </asp:TreeView>
    </div>
      
    </form>
