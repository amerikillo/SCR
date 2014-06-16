<%-- 
    Document   : Reporte
    Created on : 26/12/2012, 09:05:24 AM
    Author     : Unknown
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Clases.ConectionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%java.text.DateFormat df2 = new java.text.SimpleDateFormat("yyyy-MM-dd"); %>
<%java.text.DateFormat df = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); %>
<%java.text.DateFormat df3 = new java.text.SimpleDateFormat("dd/MM/yyyy");%>
<% /*Parametros para realizar la conexión*/

    HttpSession sesion = request.getSession();
    ConectionDB con = new ConectionDB();

    int sumTotal = 0, pendSur = 0, cajAmp = 0;

    /*parameters.put("hora_ini", df2.format(df3.parse(request.getParameter("hora_ini")))+" 00:00:01");
     parameters.put("hora_fin", df2.format(df3.parse(request.getParameter("hora_fin")))+" 23:59:59");
     parameters.put("id_origen", request.getParameter("id_origen"));
     parameters.put("unidad", request.getParameter("unidad"));
     parameters.put("id_tip", request.getParameter("id_tip"));*/
    String origen = "";
    try {
        if (request.getParameter("id_origen").equals("1")) {
            origen = "SSD";
        } else if (request.getParameter("id_origen").equals("2")) {
            origen = "SORIANA";
        }
    } catch (Exception e) {
    }

%>
<html>
    <head>
        <script language="javascript" src="list02.js"></script>
        <style type="text/css">
            .letra{
                font-size: 9px;
            }
        </style>
    </head>
    <body>
        <%            try {

        %>
        <div style="text-align: center; width: 800px;" class="letra">
            GOBIERNO DEL ESTADO DE DURANGO <br/>
            SECRETARIA DE SALUD <br/>
            TIENDAS SORIANA S.A DE C.V <br/>
            REPORTE DETALLADO DE CONSUMO POR RECETA  <br/>
            DE LA UNIDAD: <%=request.getParameter("unidad")%> <br/>
            PERIODO: <%=df2.format(df3.parse(request.getParameter("hora_ini")))%> al <%=df2.format(df3.parse(request.getParameter("hora_fin")))%>  <br/>
            CONSULTA EXTERNA <br/>
            ORIGEN: <%=origen%><br/>
        </div>
        <%} catch (Exception e) {

            }
        %>
        <div class="letra"><a href="../farmacia/repSolSur.jsp">Regresar</a></div>
        <%
            /*
             Para origen 1
             */
            try {
        %>
        <table border="1" width="800px" class="letra">
            <tr>
                <td>Clave</td>
                <td>Descripción</td>
                <td>Presentación</td>
                <td>Cant Sol</td>
                <td>Cant Sur</td>
            </tr>
            <%
                con.conectar();
                ResultSet rset = con.consulta("select * from receta_reportes where des_uni = '" + request.getParameter("unidad") + "' and fecha_hora between '" + df2.format(df3.parse(request.getParameter("hora_ini"))) + " 00:00:01' and '" + df2.format(df3.parse(request.getParameter("hora_fin"))) + " 23:59:59' group by cla_pro order by cla_pro+0 ");
                while (rset.next()) {

            %>
            <tr>
                <td><%=rset.getString("cla_pro")%></td>
                <td><%=rset.getString("des_pro")%></td>
                <td><%=rset.getString("present")%></td>
                <td><%=rset.getString("can_sol")%></td>
                <td><%=rset.getString("cant_sur")%></td>
                
            </tr>

            <%                }
                    con.cierraConexion();
                } catch (Exception e) {
                }
            %>
            <tr>
                <td></td>
                <td></td>
                <td>Totales</td>
                <%
                    try {
                        con.conectar();
                        ResultSet rset = con.consulta("select sum(can_sol), sum(cant_sur) from receta_reportes where des_uni = '" + request.getParameter("unidad") + "' and fecha_hora between '" + df2.format(df3.parse(request.getParameter("hora_ini"))) + " 00:00:01' and '" + df2.format(df3.parse(request.getParameter("hora_fin"))) + " 23:59:59' ");
                        while (rset.next()) {
                %>
                <td><%=rset.getString(1)%></td>
                <td><%=rset.getString(2)%></td>
                <%
                        }
                        con.cierraConexion();
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                %>
                
            </tr> 
            <tr>
                <td colspan="6">

                </td>
            </tr>

            <tr>
                <td colspan="6">
                    <div style="float: left">
                        Administrador de la Unidad
                    </div>
                    <div style="float: right">
                        Filtro de la Secretaría de Salud de Durango
                    </div>
                    <div style="text-align: center ">
                        Encargado de la Farmacia
                    </div>
                </td>
            </tr>
        </table>


    </body>
</html>
