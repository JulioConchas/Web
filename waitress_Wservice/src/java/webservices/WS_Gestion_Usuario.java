/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webservices;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import Modelo.*;
/**
 *
 * @author JulioConchas <conchasjimenez@gmail.com>
 */
@WebService(serviceName = "WS_Gestion_Usuario")
public class WS_Gestion_Usuario {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "insert")
    public String insert(@WebParam(name = "trade_name") String trade_name, @WebParam(name = "trade_kind") String trade_kind, @WebParam(name = "admin_name") String admin_name, @WebParam(name = "password") String password, @WebParam(name = "email") String email) {
        //TODO write your implementation code here:
        String ret = "\nTrade_name: " + trade_name + "\nTrade kind: " + trade_kind + "\nAdmin_name: " + admin_name + "\nPassword: " + password + "\nEmail: " + email + "\n";
        
        return ret;
    }
}
