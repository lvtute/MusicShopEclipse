/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package get;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Value;

public class ChartGet {
    public ArrayList<Value> getAll() {
        try {
            CategoryGet categoryDAO = new CategoryGet();
            ProductGet productDAO = new ProductGet();
            ArrayList<Value> list = new ArrayList<>();
            for (Category category : categoryDAO.getListCategory()) {
                list.add(new Value(category.getCategoryName(),
                        productDAO.getListProductByCategory(category.getCategoryID()).size()));
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ChartGet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
//        System.out.println(new ChartDAO().getAll());
        for(Value v : new ChartGet().getAll()){
            System.out.println(v.getName() + " - "+v.getValue());
        }
    }
    
}
