<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="AllApplicant.aspx.cs" Inherits="mskiForm.admin.AllApplicant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        td{
            font-size:15pt !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper">
        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-12 d-flex no-block align-items-center">
                    <h2 class="page-title">All Applicants</h2>
                    <div class="ml-auto text-right">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Dashboard.aspx">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">All Applicant</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid" style="overflow-x:auto;">
            <div class="row overflowgrid" style="overflow-x:auto;">
                <div class="card" style="overflow-x:auto;">
                    <asp:GridView ID="GridView1" CssClass="table text-center" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ApplicantId" DataSourceID="SqlDataSource2" Width="100%" BorderStyle="Solid" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="ApplicantId" HeaderText="ApplicantId" InsertVisible="False" ReadOnly="True" SortExpression="ApplicantId" />
                            <asp:CommandField HeaderText="Show Me" ShowSelectButton="True" SelectText="Details">
                            <ControlStyle CssClass="btn btn-success text-white" Font-Size="12pt" />
                            </asp:CommandField>
                            <asp:CommandField HeaderText="Delete It" ShowDeleteButton="True">
                            <ControlStyle CssClass="btn btn-danger text-white" Font-Size="12pt" />
                            </asp:CommandField>
                            
                            
                            <asp:BoundField DataField="ApplicantName" HeaderText="ApplicantName" SortExpression="ApplicantName" />
                            <asp:BoundField DataField="ApplicantDOB" HeaderText="ApplicantDOB" SortExpression="ApplicantDOB" />
                            <asp:BoundField DataField="ApplicantPhone" HeaderText="ApplicantPhone" SortExpression="ApplicantPhone" />
                            <asp:BoundField DataField="ApplicantEmail" HeaderText="ApplicantEmail" SortExpression="ApplicantEmail" />
                            <asp:BoundField DataField="ApplicantAddress" HeaderText="ApplicantAddress" SortExpression="ApplicantAddress" />
                            <asp:BoundField DataField="ApplicantCity" HeaderText="ApplicantCity" SortExpression="ApplicantCity" />
                            <asp:BoundField DataField="ApplicantState" HeaderText="ApplicantState" SortExpression="ApplicantState" />
                            <asp:BoundField DataField="ApplicantZipCode" HeaderText="ApplicantZipCode" SortExpression="ApplicantZipCode" />
                            <asp:BoundField DataField="ApplicantCountry" HeaderText="ApplicantCountry" SortExpression="ApplicantCountry" />
                            <asp:BoundField DataField="ApplicantTenthBoard" HeaderText="ApplicantTenthBoard" SortExpression="ApplicantTenthBoard" />
                            <asp:BoundField DataField="ApplicantTenthYear" HeaderText="ApplicantTenthYear" SortExpression="ApplicantTenthYear" />
                            <asp:BoundField DataField="ApplicantTenthMarks" HeaderText="ApplicantTenthMarks" SortExpression="ApplicantTenthMarks" />
                            <asp:BoundField DataField="ApplicantTwelthBoard" HeaderText="ApplicantTwelthBoard" SortExpression="ApplicantTwelthBoard" />
                            <asp:BoundField DataField="ApplicantTwelthYear" HeaderText="ApplicantTwelthYear" SortExpression="ApplicantTwelthYear" />
                            <asp:BoundField DataField="ApplicantTwelthMarks" HeaderText="ApplicantTwelthMarks" SortExpression="ApplicantTwelthMarks" />
                            <asp:BoundField DataField="ApplicantGradUniverity" HeaderText="ApplicantGradUniverity" SortExpression="ApplicantGradUniverity" />
                            <asp:BoundField DataField="ApplicantGradYear" HeaderText="ApplicantGradYear" SortExpression="ApplicantGradYear" />
                            <asp:BoundField DataField="ApplicantGradMarks" HeaderText="ApplicantGradMarks" SortExpression="ApplicantGradMarks" />
                            <asp:BoundField DataField="ApplicantPosition" HeaderText="ApplicantPosition" SortExpression="ApplicantPosition" />
                            <asp:BoundField DataField="ApplicantType" HeaderText="ApplicantType" SortExpression="ApplicantType" />
                            <asp:BoundField DataField="ApplicantExperience" HeaderText="ApplicantExperience" SortExpression="ApplicantExperience" />
                            <asp:BoundField DataField="ApplicantEligible" HeaderText="ApplicantEligible" SortExpression="ApplicantEligible" />
                            <asp:BoundField DataField="ApplicantAccount" HeaderText="ApplicantAccount" SortExpression="ApplicantAccount" />
                            
                        </Columns>

                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />

                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FormCon %>" SelectCommand="SELECT * FROM [tblApplicant] order by ApplicantId desc" DeleteCommand="DELETE FROM [tblApplicant] WHERE [ApplicantId] = @ApplicantId" InsertCommand="INSERT INTO [tblApplicant] ([ApplicantAddress], [ApplicantCity], [ApplicantState], [ApplicantZipCode], [ApplicantCountry], [ApplicantEmail], [ApplicantPhone], [ApplicantTenthBoard], [ApplicantTenthYear], [ApplicantTenthMarks], [ApplicantTwelthBoard], [ApplicantTwelthYear], [ApplicantTwelthMarks], [ApplicantGradUniverity], [ApplicantGradYear], [ApplicantGradMarks], [ApplicantDOB], [ApplicantName], [ApplicantPosition], [ApplicantType], [ApplicantExperience], [ApplicantEligible], [ApplicantAccount]) VALUES (@ApplicantAddress, @ApplicantCity, @ApplicantState, @ApplicantZipCode, @ApplicantCountry, @ApplicantEmail, @ApplicantPhone, @ApplicantTenthBoard, @ApplicantTenthYear, @ApplicantTenthMarks, @ApplicantTwelthBoard, @ApplicantTwelthYear, @ApplicantTwelthMarks, @ApplicantGradUniverity, @ApplicantGradYear, @ApplicantGradMarks, @ApplicantDOB, @ApplicantName, @ApplicantPosition, @ApplicantType, @ApplicantExperience, @ApplicantEligible, @ApplicantAccount)" UpdateCommand="UPDATE [tblApplicant] SET [ApplicantAddress] = @ApplicantAddress, [ApplicantCity] = @ApplicantCity, [ApplicantState] = @ApplicantState, [ApplicantZipCode] = @ApplicantZipCode, [ApplicantCountry] = @ApplicantCountry, [ApplicantEmail] = @ApplicantEmail, [ApplicantPhone] = @ApplicantPhone, [ApplicantTenthBoard] = @ApplicantTenthBoard, [ApplicantTenthYear] = @ApplicantTenthYear, [ApplicantTenthMarks] = @ApplicantTenthMarks, [ApplicantTwelthBoard] = @ApplicantTwelthBoard, [ApplicantTwelthYear] = @ApplicantTwelthYear, [ApplicantTwelthMarks] = @ApplicantTwelthMarks, [ApplicantGradUniverity] = @ApplicantGradUniverity, [ApplicantGradYear] = @ApplicantGradYear, [ApplicantGradMarks] = @ApplicantGradMarks, [ApplicantDOB] = @ApplicantDOB, [ApplicantName] = @ApplicantName, [ApplicantPosition] = @ApplicantPosition, [ApplicantType] = @ApplicantType, [ApplicantExperience] = @ApplicantExperience, [ApplicantEligible] = @ApplicantEligible, [ApplicantAccount] = @ApplicantAccount WHERE [ApplicantId] = @ApplicantId">
                        <DeleteParameters>
                            <asp:Parameter Name="ApplicantId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ApplicantAddress" Type="String" />
                            <asp:Parameter Name="ApplicantCity" Type="String" />
                            <asp:Parameter Name="ApplicantState" Type="String" />
                            <asp:Parameter Name="ApplicantZipCode" Type="String" />
                            <asp:Parameter Name="ApplicantCountry" Type="String" />
                            <asp:Parameter Name="ApplicantEmail" Type="String" />
                            <asp:Parameter Name="ApplicantPhone" Type="String" />
                            <asp:Parameter Name="ApplicantTenthBoard" Type="String" />
                            <asp:Parameter Name="ApplicantTenthYear" Type="String" />
                            <asp:Parameter Name="ApplicantTenthMarks" Type="String" />
                            <asp:Parameter Name="ApplicantTwelthBoard" Type="String" />
                            <asp:Parameter Name="ApplicantTwelthYear" Type="String" />
                            <asp:Parameter Name="ApplicantTwelthMarks" Type="String" />
                            <asp:Parameter Name="ApplicantGradUniverity" Type="String" />
                            <asp:Parameter Name="ApplicantGradYear" Type="String" />
                            <asp:Parameter Name="ApplicantGradMarks" Type="String" />
                            <asp:Parameter Name="ApplicantDOB" Type="String" />
                            <asp:Parameter Name="ApplicantName" Type="String" />
                            <asp:Parameter Name="ApplicantPosition" Type="String" />
                            <asp:Parameter Name="ApplicantType" Type="String" />
                            <asp:Parameter Name="ApplicantExperience" Type="String" />
                            <asp:Parameter Name="ApplicantEligible" Type="String" />
                            <asp:Parameter Name="ApplicantAccount" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ApplicantAddress" Type="String" />
                            <asp:Parameter Name="ApplicantCity" Type="String" />
                            <asp:Parameter Name="ApplicantState" Type="String" />
                            <asp:Parameter Name="ApplicantZipCode" Type="String" />
                            <asp:Parameter Name="ApplicantCountry" Type="String" />
                            <asp:Parameter Name="ApplicantEmail" Type="String" />
                            <asp:Parameter Name="ApplicantPhone" Type="String" />
                            <asp:Parameter Name="ApplicantTenthBoard" Type="String" />
                            <asp:Parameter Name="ApplicantTenthYear" Type="String" />
                            <asp:Parameter Name="ApplicantTenthMarks" Type="String" />
                            <asp:Parameter Name="ApplicantTwelthBoard" Type="String" />
                            <asp:Parameter Name="ApplicantTwelthYear" Type="String" />
                            <asp:Parameter Name="ApplicantTwelthMarks" Type="String" />
                            <asp:Parameter Name="ApplicantGradUniverity" Type="String" />
                            <asp:Parameter Name="ApplicantGradYear" Type="String" />
                            <asp:Parameter Name="ApplicantGradMarks" Type="String" />
                            <asp:Parameter Name="ApplicantDOB" Type="String" />
                            <asp:Parameter Name="ApplicantName" Type="String" />
                            <asp:Parameter Name="ApplicantPosition" Type="String" />
                            <asp:Parameter Name="ApplicantType" Type="String" />
                            <asp:Parameter Name="ApplicantExperience" Type="String" />
                            <asp:Parameter Name="ApplicantEligible" Type="String" />
                            <asp:Parameter Name="ApplicantAccount" Type="String" />
                            <asp:Parameter Name="ApplicantId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
