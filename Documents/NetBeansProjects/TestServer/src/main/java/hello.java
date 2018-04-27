
import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Dell64
 */
@Controller
@EnableAutoConfiguration

public class hello implements ErrorController {
    
    @RequestMapping("/")
    @ResponseBody
    String home() {
        return "Hello World! TOGETHER SPRING BOOT";
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(hello.class, args);
    }

    @Override
    public String getErrorPath() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
