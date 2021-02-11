package springmvc.validation;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import springmvc.model.User;

@Controller
public class ValidationController {
	@RequestMapping(value="/signup")
	public ModelAndView validationCheck(Model model,User user)
	{
		model.addAttribute("user",user);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("SignupForm");
		return mv;
		
	}
	@RequestMapping(value="/process")
	public ModelAndView pro(@Valid @ModelAttribute() User user,BindingResult br)
	{
		ModelAndView mv = new ModelAndView();
		if(br.hasErrors())
		{
			mv.setViewName("SignupForm");
		}
		else
		{
			mv.setViewName("success");
		}
		
		
		return mv;
		
	}

}
