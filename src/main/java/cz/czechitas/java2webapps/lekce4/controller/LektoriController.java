package cz.czechitas.java2webapps.lekce4.controller;

import cz.czechitas.java2webapps.lekce4.entity.Lektor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller()
@RequestMapping("/lektori")
public class LektoriController {
    private final List<Lektor> seznamLektoru=List.of(
        new Lektor("Víla","Amálka","workshopistka", "https://upload.wikimedia.org/wikipedia/en/3/3e/Pooh_Shepard1928.jpg"),
        new Lektor("","Sněhurka","lektor", null)
    );

    @GetMapping("/")
    public ModelAndView seznam(){
        ModelAndView modelAndView = new ModelAndView("/lektori/index");
        modelAndView.addObject("lektori",seznamLektoru);
        return modelAndView;
    }

    @GetMapping("/detail/{id}")
    public ModelAndView detail(@PathVariable int id){
        ModelAndView modelAndView = new ModelAndView("/lektori/detail");
        modelAndView.addObject("lektorDetail",seznamLektoru.get(id));
        return modelAndView;
    }
}
