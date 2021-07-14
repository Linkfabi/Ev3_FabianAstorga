﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerEstaciones.aspx.cs" Inherits="EstacionesWeb.VerEstaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="mt-5">
                <asp:GridView ID="EstacionGrid" runat="server" AutoGenerateColumns="false"
                    EmptyDataText="No hay Estaciones" CssClass="table table-hover" OnRowCommand="estacionGrid_RowCommand">
                    <Columns>
                        <asp:BoundField HeaderText="ID" DataField="id" />
                        <asp:BoundField HeaderText="Fecha" DataField="fecha" />
                        <asp:BoundField HeaderText="Direccion" DataField="direccion" />
                        <asp:BoundField HeaderText="Region" DataField="region" />
                        <asp:TemplateField HeaderText="Acciones">
                            <ItemTemplate>
                                <asp:Button runat="server" Text="Eliminar"
                                    CssClass="btn btn-danger" CommandName="eliminar"
                                    CommandArgument='<%# Eval("id") %>'></asp:Button>

                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>

</asp:Content>
