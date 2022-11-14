<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="syssalvadoranadventures.el.Rol"%>
<%@page import="syssalvadoranadventures.dal.RolDAL"%>
<%@page import="java.util.ArrayList"%>
<% ArrayList<Rol> roles = RolDAL.getAll();
    int id = Integer.parseInt(request.getParameter("idRol"));
%>
<style>
    .field {
    position: relative;
    height: 45px;
    width: 100%;
    display: flex;
    background: rgba(255, 255, 255, 0.94);
}
</style>
<div class="field space">
    <select id="slRol" name="idRol">
        <option <%=(id == 0) ? "selected" : ""%>  value="0">Selecionar Rol</option>
        <% for (Rol rol : roles) {%>
        <option <%=(id == rol.getIdRol()) ? "selected" : ""%>  value="<%=rol.getIdRol()%>"><%= rol.getName()%></option>
        <%}%>
    </select>  
    <!-- <label for="idRol">Rol</label>  -->
</div>
<!-- <select id="slRol" name="idRol">
    <option <%=(id == 0) ? "selected" : ""%>  value="0">SELECCIONAR</option>
    <% for (Rol rol : roles) {%>
    <option <%=(id == rol.getIdRol()) ? "selected" : ""%>  value="<%=rol.getIdRol()%>"><%= rol.getName()%></option>
    <%}%>
</select> -->
<!-- <label for="idRol">Rol</label> -->

