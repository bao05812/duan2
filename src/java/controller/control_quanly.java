package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class control_quanly {
@RequestMapping (params = "quanlylink")
public String banglink (Model map){
return "quanlylink";
}

@RequestMapping (params = "quanlyacc")
public String bangacc(Model map){
return "quanlyacc";
}
}
