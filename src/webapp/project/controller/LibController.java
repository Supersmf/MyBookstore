package webapp.project.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import webapp.project.model.LibraryModel;
import webapp.project.services.LibraryServices;


@Controller

@SessionAttributes("SessionAdminName")
public class LibController {
    

    
    @Autowired
    private LibraryServices libraryservice;
    
    
    @ModelAttribute 
    public void MethodForAll(ModelMap model)
    {
            model.addAttribute("codedBy", "*****Created By Oleg Gaidykevich******");
    }
    
    @RequestMapping(value ="/")
    public String GoToIndex()
    {
        return "index";
    }
    
    @RequestMapping(value="home", method= RequestMethod.POST) 
    public String GoToHome(@RequestParam String name, @RequestParam String password, ModelMap model)
    {
        if(name.equalsIgnoreCase("Oleg") && password.equals("admin"))
        {
            model.addAttribute("SessionAdminName",name);
            model.put("AdminName", name);
            model.put("password", password);
            return "AdminHomePage";
        }
        
        return "unsuccess";
        
    }
    
    @RequestMapping(value="goback")
    public String GoToHomePage()
    {
        return "AdminHomePage";
    }
    
    
    @RequestMapping(value="addToLib")
    public String GoToAddPage()
    {
        return "add";
    }
    
    @RequestMapping(value="adding")     //ADD
    public ModelAndView ForAddingBooks(@ModelAttribute("librarymodel") LibraryModel librarymodel,BindingResult result)
    {
        
          ModelAndView modelAndView = new ModelAndView("add");
          if(result.hasErrors())
          {
              String message = "Error Occured: Please Enter Correct Details. Thank You. ";           
              modelAndView.addObject("fail", message);
              return modelAndView;
          }
          else
          {
          libraryservice.AddBooks(librarymodel); 
          String message = "Added to Your Library. Thank You";           
          modelAndView.addObject("success", message);
          return modelAndView;
          }
    }
    
    @RequestMapping(value="viewlibrary") //GET LIST OF BOOKS
    public ModelAndView getAllBooks() 
    {
        List<LibraryModel> libraryList = libraryservice.GetLibrary();
        return new ModelAndView("library", "libraryList", libraryList); 
    }
    
    @RequestMapping(value="{id}", method=RequestMethod.GET)  //DELETE BOOKS
    public ModelAndView deletebook(@PathVariable int id)
    {
        libraryservice.DeleteBook(id);
        List<LibraryModel> libraryList = libraryservice.GetLibrary();
        return new ModelAndView("library","libraryList", libraryList);
    }
    
    @RequestMapping(value="update",method=RequestMethod.POST) //UPDATING BOOKS
    public ModelAndView updation(@ModelAttribute("libupdation") LibraryModel libupdation)
    {
        libraryservice.UpdateBooks(libupdation);
        List<LibraryModel> libraryList = libraryservice.GetLibrary();
        return new ModelAndView("library","libraryList",libraryList);
    }
    
    }