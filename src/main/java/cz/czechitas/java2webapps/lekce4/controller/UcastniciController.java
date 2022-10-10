package cz.czechitas.java2webapps.lekce4.controller;

import cz.czechitas.java2webapps.lekce4.entity.Ucastnik;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller()
@RequestMapping("/ucastnici")
public class UcastniciController {
    private final List<Ucastnik> seznamUcastniku = List.of(
        new Ucastnik("Veverka","Rezavá","Díra na stromě 25","https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Squirrel_posing.jpg/1024px-Squirrel_posing.jpg"),
        new Ucastnik("Medvídek","Pú",null,"https://www.sablonynazed.cz/576-thickbox_default/macko-pu-01.jpg")
    );

    @GetMapping("/")
    public ModelAndView seznam(){
        ModelAndView modelAndView = new ModelAndView("/ucastnici/index");
        modelAndView.addObject("ucastnici",seznamUcastniku);
        return modelAndView;
    }

    @GetMapping("/detail/{id}")
    public ModelAndView detail(@PathVariable int id){
        ModelAndView modelAndView = new ModelAndView("/ucastnici/detail");
        modelAndView.addObject("ucastnikDetail",seznamUcastniku.get(id));
        return modelAndView;
    }

}
