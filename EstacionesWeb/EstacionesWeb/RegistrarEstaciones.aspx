<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="RegistrarEstaciones.aspx.cs" Inherits="EstacionesWeb.RegistrarEstaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row mt-5">

        <label runat="server" id="exitoTxt" class ="form-label table-success h3"></label>

     <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">
                <div class="card-header text-center bg-info text-dark">
                    <h3 class="p-2">Registrar Estacion</h3>
                </div>
                <div class="card-body">
                
                    <div class="mt-3" >
                        <label for="validationCustom01" class="form-label">Identificador</label>
                        <input runat="server" type="number" class="form-control" id="idTxt" required>
                        <div class="valid-feedback">
                        </div>
                        <label runat="server" id="errorID" class ="form-label text-danger"></label>
                    </div>

                    <div class="mt-3">
                        <label for="validationCustom02" class="form-label">Fecha de Apertura</label>
                        <input runat="server" type="date" class="form-control" id="fechaTxt" required>
                        <div class="valid-feedback">
                        </div>
                        <label runat="server" id="errorNombre" class ="form-label text-danger"></label>
                    </div>

                    <div class="mt-3">
                        <label for="validationCustomUsername" class="form-label" >Direccion</label>
                        <div class="input-group has-validation">
                            <input runat="server" type="text" class="form-control" id="direccionTxt" aria-describedby="inputGroupPrepend" required>
                            <div class="invalid-feedback">
                            </div>
                            <label runat="server" id="errorDireccion" class ="form-label text-danger"></label>
                        </div>
                    </div>                   

                    <div class="mt-3">
                        <label for="validationCustom04" class="form-label">Region</label>
                        <select runat="server" class="form-select" id="regionBox" required>
                            <option selected disabled value="">Elije una opcion</option>
                            <option>I Region de Tarapaca</option>
                            <option>II Region de Antofagasta</option>
                            <option>III Region de Atacama</option>
                            <option>IV Region de Coquimbo</option>
                            <option>V Region de Valparaiso</option>
                            <option>VI Region del Libertador General Bernardo O'Higgins</option>
                            <option>VII Region del Maule</option>
                            <option>VIII Region del Biobio</option>
                            <option>IX Region de la Araucania</option>
                            <option>X Region de los Lagos</option>
                            <option>XI Region</option>
                            <option>XII Region</option>
                            <option>Region Metropolitana de Santiago</option>
                            <option>XIV Region de los Rios</option>
                            <option>XV Region de Arica y Parinacota</option>
                            <option>XVI Region de Nuble</option>
                        </select>
                    </div>
                    
                    <div class="mt-3">
                        <asp:button runat="server" class="btn btn-primary" OnClick="AgregarBtn_Click" Text="Agregar"></asp:button>
                    </div>                  
               
                    </div>                
                
            </div>            

        </div>

    </div>

</asp:Content>
