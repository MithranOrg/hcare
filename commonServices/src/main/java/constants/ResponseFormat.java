/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package constants;

/**
 *
 * @author arunkumarv
 */
public class ResponseFormat {
    
    private String resp_msg;
    private int resp_code;

    /**
     * @return the resp_msg
     */
    public String getResp_msg() {
        return resp_msg;
    }

    /**
     * @param resp_msg the resp_msg to set
     */
    public void setResp_msg(String resp_msg) {
        this.resp_msg = resp_msg;
    }

    /**
     * @return the resp_code
     */
    public int getResp_code() {
        return resp_code;
    }

    /**
     * @param resp_code the resp_code to set
     */
    public void setResp_code(int resp_code) {
        this.resp_code = resp_code;
    }
    
}
