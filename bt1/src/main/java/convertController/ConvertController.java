package convertController;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

public class ConvertController {
    @GetMapping("/index")
    public String showIndex(){
        return "views/index";
    }

    @GetMapping("/result")
    public String showResults(@RequestParam("rate") float rate,@RequestParam("usd") float usd ,Model model){
        model.addAttribute("rate", rate);
        model.addAttribute("usd", usd);
        float vnd = rate * usd;
        model.addAttribute("vnd", vnd);
        return "views/result";
    }
}
