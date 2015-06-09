package com.springapp.mvc;

import com.springapp.entity.Employee;
import com.springapp.service.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.activation.DataSource;
import java.util.List;

/**
 * Created by chathura on 6/5/15.
 */
@Controller
public class DataController {
    @Autowired
    DataService dataService;
    @RequestMapping("form")
    public ModelAndView getForm(@ModelAttribute Employee employee){
        return  new ModelAndView("form");
    }
    @RequestMapping("register")
    public ModelAndView registerUser(@ModelAttribute Employee employee){
        dataService.insertRow(employee);
        return new ModelAndView("redirect:list");
    }

    @RequestMapping("list")
    public ModelAndView getList() {
        List employeeList = dataService.getList();
        return new ModelAndView("list", "employeeList", employeeList);
    }


    @RequestMapping("delete")
    public ModelAndView deleteUser(@RequestParam int id) {
        dataService.deleteRow(id);
        return new ModelAndView("redirect:list");
    }

    @RequestMapping("edit")
    public ModelAndView editUser(@RequestParam int id,
                                 @ModelAttribute Employee employee) {
        Employee employeeObject = dataService.getRowById(id);
        return new ModelAndView("edit", "employeeObject", employeeObject);
    }

    @RequestMapping("update")
    public ModelAndView updateUser(@ModelAttribute Employee employee) {
        dataService.updateRow(employee);
        return new ModelAndView("redirect:list");
    }
}
