/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.CategoriaDAO;
import dao.EstabelecimentoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.CategoriaModel;
import model.EstabelecimentoModel;

/**
 *
 * @author Alexandre
 */
public class VerCardapio extends HttpServlet {

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
        //HttpSession session = request.getSession(true);

        CategoriaModel cat = new CategoriaModel();
        CategoriaDAO catdao = new CategoriaDAO();
        List<CategoriaModel> catList = null;//catdao.listarCategorias((Integer) session.getAttribute("user_id"));
        EstabelecimentoModel est = new EstabelecimentoModel();
        EstabelecimentoDAO estdao = new EstabelecimentoDAO();
        est = estdao.listarEstabelecimentoId(Integer.parseInt(request.getParameter("key")));
        
        if(est.getIdestabelecimento() == 0){
            request.getRequestDispatcher("error404_cardapio.jsp").forward(request, response);
        }

        request.setAttribute("categoriaList", catdao.listarCategorias(est.getIdestabelecimento()));
        request.setAttribute("idestabelecimento", Integer.parseInt(request.getParameter("key")));
        request.setAttribute("est_nome", est.getNome());
        // System.out.printf("%d ",(num[i]/10000)%10," ");

        String[] digits = est.getTelefone().split("(?<=.)");

        request.setAttribute("est_telefone", digits[0]+digits[1] +" "+ digits[2]+ digits[3]+ digits[4]+ digits[5]+ digits[6]+ digits[7]+ digits[8]+ digits[9]+ digits[10]);
        request.setAttribute("est_descricao", est.getDescricao());
        if(est.getBairro() == null || est.getLogradouro() == null || est.getNumero() == 0 || est.getCidade() == null || est.getEstado() == null){
            request.setAttribute("est_endereco", "Endereço incompleto! :(");
        }else{
            request.setAttribute("est_endereco", "   "+est.getLogradouro()+", nº "+ est.getNumero()+", "+ est.getBairro()+" | "+est.getCidade()+"-"+est.getEstado());
        }
        request.setAttribute("est_tipo", "Bar&Boteco");
        request.setAttribute("est_imagem", est.getImagem());
        request.getRequestDispatcher("vercardapio.jsp").forward(request, response);
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
