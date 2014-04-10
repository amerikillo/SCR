/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Clases.ConectionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Americo
 */
public class Farmacias extends HttpServlet {

    ConectionDB con = new ConectionDB();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession(true);
        try {
            if (request.getParameter("accion").equals("surtir")) {
                con.conectar();
                try {
                    con.insertar("update receta set transito = '0' where id_rec = '" + request.getParameter("id_rec") + "'  ");
                    out.println("<script>alert('Se surtió la receta con folio: " + request.getParameter("fol_rec") + " correctamente.')</script>");
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                    out.println("<script>alert('Error al surtir la receta')</script>");
                }
                con.cierraConexion();
                out.println("<script>window.location='reportes/TicketReceta.jsp?fol_rec="+request.getParameter("fol_rec")+"'</script>");
            } else if (request.getParameter("accion").equals("cancelar")) {
                con.conectar();
                try {

                    ResultSet rset = con.consulta("select fol_det from detreceta where id_rec = '" + request.getParameter("id_rec") + "' ");
                    while (rset.next()) {
                        ResultSet rset2 = con.consulta("select dr.det_pro, dr.can_sol, dr.cant_sur, i.cant, dr.id_rec from detreceta dr, detalle_productos dp, inventario i where dr.det_pro = dp.det_pro and dp.det_pro = i.det_pro and dr.fol_det = '" + rset.getString(1) + "' ");
                        while (rset2.next()) {
                            String det_pro = "", id_rec = "";
                            int n_cant = 0, can_sol = 0, cant_sur = 0, cant_inv = 0;
                            det_pro = rset2.getString(1);
                            can_sol = rset2.getInt(2);
                            cant_sur = rset2.getInt(3);
                            cant_inv = rset2.getInt(4);
                            id_rec = rset2.getString(5);
                            n_cant = cant_inv + cant_sur;

                            con.insertar("update detreceta set can_sol = '0', cant_sur = '0', baja='1' where fol_det = '" + rset.getString(1) + "' ");
                            con.insertar("update inventario set cant = '" + n_cant + "' where det_pro = '" + det_pro + "' ");
                            con.insertar("insert into kardex values ('0', '" + id_rec + "', '" + det_pro + "', '" + cant_sur + "', 'REINTEGRA AL IVENTARIO', '-', NOW(), 'SE SE CANCELA RECETA', '" + sesion.getAttribute("id_usu") + "', '0'); ");
                        }

                    }
                    con.insertar("update receta set transito = '0', baja='1' where id_rec = '" + request.getParameter("id_rec") + "'  ");
                    out.println("<script>alert('Se canceló la receta con folio: " + request.getParameter("fol_rec") + " correctamente.')</script>");
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                    out.println("<script>alert('Error al cancelar la receta')</script>");
                }
                con.cierraConexion();
                out.println("<script>window.location='farmacia/modFarmacia.jsp'</script>");
            } else if (request.getParameter("accion").equals("modificar")) {
                try {
                    con.conectar();
                    String fol_det = request.getParameter("fol_det");
                    System.out.println(fol_det);
                    String folios[] = fol_det.split(",");
                    for (int i = 0; i < folios.length; i++) {
                        if (!folios[i].equals("")) {
                            System.out.println(folios[i]);
                            String sol = request.getParameter("sol_" + folios[i]);
                            String sur = request.getParameter("sur_" + folios[i]);
                            System.out.println("sol+" + sol + "+sur+" + sur);
                            if (Integer.parseInt(sur) > Integer.parseInt(sol)) {
                                out.println("<script>alert('No se puede surtir una cantidad mayor que la solicitada.')</script>");
                            } else {
                                String id_inv="", id_rec="", det_pro="";
                                int sol1=Integer.parseInt(sol);
                                int sur1=Integer.parseInt(sur);
                                int dif = sol1-sur1;
                                int cant_inv=0;
                                int cant_nueva=0;
                                try {
                                    ResultSet rset = con.consulta("select * from salidas where fol_det = '"+folios[i]+"' ");
                                    while(rset.next()){
                                        cant_inv=rset.getInt("cant");
                                        id_rec= rset.getString("id_rec");
                                        id_inv= rset.getString("id_inv");
                                        det_pro=rset.getString("det_pro");
                                    }
                                } catch (Exception e) {
                                }
                                cant_nueva = cant_inv+dif;
                                try {
                                    con.insertar("insert into kardex values ('0', '"+id_rec+"', '"+det_pro+"', '"+dif+"', 'ENTRADA POR AJUSTE', '-', NOW(), 'SE EDITA RECETA AL ENTREGARSE', '"+ sesion.getAttribute("id_usu") +"', '0')  ");
                                    con.insertar("update inventario set cant = '"+cant_nueva+"' where id_inv= '"+id_inv+"' ");
                                    con.insertar("update detreceta set cant_sur = '" + sur + "', can_sol = '" + sol + "' where fol_det  = '" + folios[i] + "' ");
                                } catch (Exception e) {
                                    System.out.println(e.getMessage());
                                }
                            }

                        }
                    }
                    con.cierraConexion();
                    response.sendRedirect("farmacia/modFarmacia.jsp");
                } catch (Exception e) {
                }
            }
        } catch (Exception e) {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
