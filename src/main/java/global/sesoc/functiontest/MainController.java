package global.sesoc.functiontest;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index";
	}
	
	@GetMapping("/map")
	public String map() {
		
		return "map";
	}
	
	@GetMapping("/chart")
	public String chart() {
		
		return "chart";
	}
	
	@GetMapping("/HomeSearch")
	public String HomeSearch() {
		
		return "HomeSearch";
	}
	
	@GetMapping("/MartSearch")
	public String MartSearch() {
		
		return "MartSearch";
	}
	
	@GetMapping("/recipe")
	public String recipe() {
		
		return "recipe";
	}
}
