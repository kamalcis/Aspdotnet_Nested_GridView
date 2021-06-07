<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Aspdotnet_Nested_Gridview.WebForm1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            font-family: Arial;
            font-size: 10pt;
        }

        .Grid td {
            background-color: #A1DCF2;
            color: black;
            font-size: 10pt;
            line-height: 200%
        }

        .Grid th {
            background-color: #3AC0F2;
            color: White;
            font-size: 10pt;
            line-height: 200%
        }

        .ChildGrid td {
            background-color: #eee !important;
            color: black;
            font-size: 10pt;
            line-height: 200%
        }

        .ChildGrid th {
            background-color: #6C6C6C !important;
            color: White;
            font-size: 10pt;
            line-height: 200%
        }







        div label input {
            margin-right: 10px;
        }

        body {
            font-family: sans-serif;
        }

        #ck-button {
            margin: 0px;
            background-color: #EFEFEF;
            border-radius: 0px;
            border: 1px solid #D0D0D0;
            overflow: auto;
            float: left;

        }

            #ck-button label {
                float: left;
                width: 4.0em;
            }

                #ck-button label span {
                    text-align: center;
                    padding: 3px 0px;
                    display: block;
                    border-radius: 0px;
                }

                #ck-button label input {
                    position: absolute;
                    top: -20px;
                }

            #ck-button input:hover + span {
                background-color: #efE0E0;
            }

            #ck-button input:checked + span {
                background-color: #911;
                color: #fff;
            }

            #ck-button input:checked:hover + span {
                background-color: #c11;
                color: #fff;
            }
    </style>

    <%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>--%>

    <%--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js" ></script>--%>

    <script type="text/javascript" src="Scripts/jquery_3_1_0.min.js"></script>
    <script type="text/javascript">



        $(document).ready(function () {

            $('img[id^="imgdiv"]').each(function (i, obj) {
                $(this).trigger('click');
            });

        });

        $(document).on('click', '[src*=plus]', function () {
            $(this).closest("tr").after("<tr><td></td><td colspan='999'>" + $(this).next().html() + "</td></tr>");

            $(this).attr("src", "images/minus.png");
        });
        $(document).on('click', '[src*=minus]', function () {
            $(this).attr("src", "images/plus.png");
            $(this).closest("tr").next().remove();
        });




    </script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false" CssClass="Grid"
            DataKeyNames="CustomerID" OnRowDataBound="OnRowDataBound" Width="100%">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <img id="imgdiv" alt="" style="cursor: pointer" src="images/plus.png" />
                        <asp:Panel ID="pnlOrders" runat="server" Style="display: none">
                            <asp:GridView Width="100%" ID="gvOrders" runat="server" AutoGenerateColumns="false" CssClass="ChildGrid">
                                <Columns>
                                    <asp:BoundField ControlStyle-Width="30%"  DataField="OrderId" HeaderText="Order Id" />
                                    <asp:BoundField ControlStyle-Width="30%" DataField="OrderItem" HeaderText="Order Id" />

                                    <asp:BoundField ControlStyle-Width="30%"  DataField="OrderDate" HeaderText="Date" />

                                    <asp:TemplateField ItemStyle-Width="50px">
                                        <ItemTemplate>
                                            <div id="ck-button">
                                                <label>
                                                    <asp:CheckBox ID="CheckBox1"  runat="server" /> <span style="color:red"> &nbsp; </span>

                                                </label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField ItemStyle-Width="50px">
                                        <ItemTemplate >
                                            <div id="ck-button">
                                                <label>
                                            <asp:CheckBox ID="CheckBox2"    runat="server" /> <span style="color:red"> &nbsp; </span>
                                                </label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField ItemStyle-Width="50px">
                                        <ItemTemplate >
                                            <div id="ck-button">
                                                <label>
                                            <asp:CheckBox ID="CheckBox2"    runat="server" /> <span style="color:red"> &nbsp; </span>
                                                </label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField ItemStyle-Width="50px">
                                        <ItemTemplate >
                                            <div id="ck-button">
                                                <label>
                                            <asp:CheckBox ID="CheckBox2"    runat="server" /> <span style="color:red"> &nbsp; </span>
                                                </label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField ItemStyle-Width="50px">
                                        <ItemTemplate >
                                            <div id="ck-button">
                                                <label>
                                            <asp:CheckBox ID="CheckBox2"    runat="server" /> <span style="color:red"> &nbsp; </span>
                                                </label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>




                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField ItemStyle-Width="98%" DataField="ContactName" HeaderText="Contact Name" />
                <%--                <asp:BoundField ItemStyle-Width="150px" DataField="City" HeaderText="City" />--%>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
