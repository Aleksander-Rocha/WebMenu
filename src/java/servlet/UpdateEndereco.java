/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.EstabelecimentoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.EstabelecimentoModel;

/**
 *
 * @author Alexandre
 */
public class UpdateEndereco extends HttpServlet {

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
        try{            
            HttpSession session = request.getSession(true);
            EstabelecimentoModel est = new EstabelecimentoModel(); //getServletContext().getRequestDispatcher("/views/error.jsp").include(request, response);
            EstabelecimentoDAO estdao = new EstabelecimentoDAO();
            est.setEstado(request.getParameter("estado"));
            est.setBairro(request.getParameter("bairro"));
            est.setCidade(request.getParameter("cidade"));
            est.setLogradouro(request.getParameter("logradouro"));
            est.setComplemento(request.getParameter("complemento"));

            if(!request.getParameter("numero").isEmpty()){
                est.setNumero(Integer.parseInt(request.getParameter("numero")));
            }else{
                est.setNumero(0);
            }


            int idestabelecimento = (Integer) session.getAttribute("user_id");

            est.setIdestabelecimento(idestabelecimento);

            boolean update = estdao.updateEndereco(est);
            String text="";
            if (update) {
                text = "Alterações realizadas com sucesso!";
            } else {
                text = "Falha ao tentar realizar as alterações";
            }
            request.setAttribute("status", text);
            request.getRequestDispatcher("endereco").forward(request, response);
        }catch(Exception e){
            response.sendRedirect("index.jsp");
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
