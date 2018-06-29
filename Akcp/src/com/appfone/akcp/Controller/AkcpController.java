package com.appfone.akcp.Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.appfone.akcp.Pojo.Akcpaboutusimage;
import com.appfone.akcp.Pojo.Akcpadminregesitration;
import com.appfone.akcp.Pojo.Akcpbanner;
import com.appfone.akcp.Pojo.Akcpfeedback;
import com.appfone.akcp.Pojo.Akcphomeaboutusimage;
import com.appfone.akcp.Service.AdminLoginService;
import com.appfone.akcp.Service.AdminRecoveryService;
import com.appfone.akcp.Service.AdminaboutusService;
import com.appfone.akcp.Service.AdminactiveService;
import com.appfone.akcp.Service.AdminbannerService;
import com.appfone.akcp.Service.AdminfeedbackService;
import com.appfone.akcp.Service.AdminhomeaboutusService;
import com.appfone.dreddy.util.Emailutility;

@Controller
public class AkcpController 
{
	@Autowired
	private ServletContext context;
	
	@Autowired
	private HttpSession sessionn;
	
	@RequestMapping(value="/")
	public ModelAndView indexController()
	{
		Akcpbanner banner = bannerservice.getbanner(1);
		Akcphomeaboutusimage homeabtimg = homeaboutservice.gethomeaboutusimage(1);
		ModelAndView mv= new ModelAndView();
		mv.addObject("userbannlist", banner);
		mv.addObject("homeabtimg", homeabtimg);
		mv.setViewName("index");
		return mv;
		
	}

	@RequestMapping(value="/index")
	public ModelAndView Controller()
	{
		Akcpbanner banner = bannerservice.getbanner(1);
		Akcphomeaboutusimage homeabtimg = homeaboutservice.gethomeaboutusimage(1);
		ModelAndView mv= new ModelAndView();
		mv.addObject("userbannlist", banner);
		mv.addObject("homeabtimg", homeabtimg);
		mv.setViewName("index");
		return mv;
		
	}
	
	@RequestMapping(value="/about-us")
	public ModelAndView aboutusController()
	{
		Akcpaboutusimage aboutusimg = aboutusservice.getaboutusimage(1);
		ModelAndView mv= new ModelAndView();
		mv.addObject("aboutusimg", aboutusimg);
		mv.setViewName("about-us");
		return mv;
	}
	
	@RequestMapping(value="/events")
	public ModelAndView eventsController()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("events");
		return mv;
	}
	
	@RequestMapping(value="/gallery")
	public ModelAndView galleryController()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("gallery");
		return mv;
	}
	
	@RequestMapping(value="/member")
	public ModelAndView memberController()
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member");
		return mv;
	}
	@RequestMapping(value="/contact-us")
	public ModelAndView contactusController()
	{
		Akcpfeedback userfeed = new Akcpfeedback();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contact-us");
		mv.addObject("userfeed", userfeed);
		return mv;
	}
	
	@RequestMapping(value="/admin")
	public ModelAndView adminController()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	@Autowired
	private AdminLoginService loginservice;
	
	@RequestMapping(value="/adminlogin")
	public String adminloginController(@RequestParam("username")String username,@RequestParam("password") String pass)
	{
		
		int res = loginservice.checkAdmin(username, pass);
		if(res==1)
		{
			sessionn.setAttribute("activeuser", username);
			sessionn.setAttribute("activepassword", pass);
			
			return "redirect:/adminloginsuccess";
			
		}
		
		return "redirect:/adminloginfailure";
		
	}
	
	@RequestMapping(value="/adminloginsuccess")
	public ModelAndView adminloginsuccessController()
	{	
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminindex");
		return mv;
	}
	
	
	@RequestMapping(value="/adminloginfailure")
	public ModelAndView adminloginfailureController()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		String err="Username or Password Missmatch";
		mv.addObject("logerr", err);
		return mv;
	}
	
	@RequestMapping(value="/adminlogout")
	public String adminlogoutController()
	{
		sessionn.invalidate();
		return "redirect:/admin";
	}
	
	@RequestMapping(value="/forgetcredentials")
	public ModelAndView forgetcredentialsController()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("forgetpassword");
		return mv;
	}
	@Autowired
	private AdminRecoveryService adminrecoveryservice;
	
	@RequestMapping(value="/recovery")
	public ModelAndView recoveryController(@RequestParam("useremail")String email)
	{
		
		int res=adminrecoveryservice.checkMailidtosend(email);
		if(res==1)
		{
			String username=adminrecoveryservice.getusername(email);
			String password=adminrecoveryservice.getpassword(email);
			String subject ="login credentials Recovery ";
			String msg="Dear Admin your username and password is as follows \n \n \n Username :" +username +"\n Password is :"+password +"\n \n \n Please don't reply to this message this is computer generated";
		Emailutility.send(email, subject, msg);
		
			ModelAndView mv = new ModelAndView();
		mv.setViewName("popup");
		return mv;
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("forgetpassword");
		String recerror="please enter the registred email id";
		mv.addObject("recerr", recerror);
		return mv;		
	}
	
	@Autowired
	private AdminactiveService adminactivservice;
	@RequestMapping(value="/adminprofile")
	public ModelAndView adminprofileController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		String username= sessionn.getAttribute("activeuser").toString();
		String password = sessionn.getAttribute("activepassword").toString();
		List<Akcpadminregesitration>list = adminactivservice.getCurrentuser(username, password);
		ModelAndView mv = new ModelAndView();
		mv.addObject("adminactivelist", list);
		mv.setViewName("adminprofile");
		return mv;
	}
	
	
	@RequestMapping(value="/adminsetting")
	public ModelAndView adminsettingController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		ModelAndView mv= new ModelAndView();
		Akcpadminregesitration addadmin = new Akcpadminregesitration();
		List<Akcpadminregesitration> list = adminactivservice.getalladmin();
		mv.addObject("alladminlist", list);
		mv.addObject("addnewadmin", addadmin);
		mv.setViewName("adminsetting");
		return mv;
	}
	
	@RequestMapping(value="/saveadmin")
	public String saveadminController(@ModelAttribute("addnewadmin")Akcpadminregesitration newadmin)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return"redirect:/admin";
		}
		String adminname=newadmin.getAdmin_name();
		 int res= adminactivservice.checkadminNameavailable(adminname);
		 if(res==0)
		 {
		adminactivservice.saveAdmin(newadmin);
		
		return"redirect:/adminsetting";
		 }
		 return "redirect:/saveadminfailure";
		
	}
	
	@RequestMapping(value="/saveadminfailure")
	public ModelAndView saveadminfailureController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		ModelAndView mv= new ModelAndView();
		Akcpadminregesitration addadmin = new Akcpadminregesitration();
		List<Akcpadminregesitration> list = adminactivservice.getalladmin();
		String errmsg = "Choosen admin name already exists !!";
		mv.addObject("alladminlist", list);
		mv.addObject("addnewadmin", addadmin);
		mv.addObject("adminexists", errmsg);
		mv.setViewName("adminsetting");
		return mv;
		
	}
	@RequestMapping(value="/admindelete")
	public String admindeleteController(@RequestParam("admin_id")int id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return"redirect:/admin";
		}
		adminactivservice.deleteSingleAdmin(id);
		return "redirect:/adminsetting";
		
		
	}
	
	@RequestMapping(value="/editadmin")
	public ModelAndView editadminController(@RequestParam("admin_id")int id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		sessionn.setAttribute("editadmin", id);
		Akcpadminregesitration editadmin=adminactivservice.getSingleadmin(id);
		String prevusername = editadmin.getAdmin_name();
		sessionn.setAttribute("prevusername", prevusername);
		ModelAndView mv= new ModelAndView();
		
		mv.setViewName("editadmin");
		mv.addObject("editadmin", editadmin);
		return mv;
		
	}
	
	@RequestMapping(value="/saveeditadmin")
	public String saveeditadminController(@ModelAttribute("editadmin")Akcpadminregesitration newadmin)
	{
		String prevname = sessionn.getAttribute("prevusername").toString();
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return"redirect:/admin";
		}
		String adminname=newadmin.getAdmin_name();
		 int res= adminactivservice.checkadminNameavailable(adminname);
		 if(adminname.equals(prevname))
		 {
			 res=0;
		 }
	
		 if(res==0)
		 {
		adminactivservice.saveAdmin(newadmin);
		return"redirect:/adminsetting";
		 }
		 int admin_id=Integer.parseInt(sessionn.getAttribute("editadmin").toString());
		 return "redirect:/saveeditadminfailure?admin_id="+admin_id;
		
	}
	@RequestMapping(value="/saveeditadminfailure")
	public ModelAndView saveeditadminfailureController(@RequestParam("admin_id")int id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		
		Akcpadminregesitration editadmin=adminactivservice.getSingleadmin(id);
		ModelAndView mv= new ModelAndView();
		String errmsg = "Choosen admin name is already taken !!!";
		mv.setViewName("editadmin");
		mv.addObject("editadmin", editadmin);
		mv.addObject("editadminexist", errmsg);
		return mv;
		
		
		
	}

	@RequestMapping(value="/dashboard")
	public String dashboardController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return "redirect:/admin";
		}
		return"redirect:/adminloginsuccess";
	}
	
	@Autowired
	private AdminbannerService bannerservice;
	
	@RequestMapping(value="/adminbanner")
	public ModelAndView adminbannerController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		
		Akcpbanner banner = bannerservice.getbanner(1);
		ModelAndView mv = new ModelAndView();
		mv.addObject("bannerlist", banner);
		mv.setViewName("adminbannner");
		return mv;
	}
	
	@RequestMapping(value="/banneredit")
	public ModelAndView bannereditController(@RequestParam("banner_id")int banner_id,@RequestParam("banner_image")String banner_image)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Akcpbanner editbanner= bannerservice.getbanner(banner_id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("editbanner", editbanner);
		mv.setViewName("adminbanneredit");
		return mv;
		
	}
	
	@RequestMapping(value="/saveeditbanner")
	public String saveeditbannerController(@ModelAttribute("editbanner")Akcpbanner saveeditbann,@RequestParam("delimage")String delbanner)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return "redirect:/admin";
		}
		
		MultipartFile file= saveeditbann.getBanner_file();
		if(file.isEmpty())
		{
		
			saveeditbann.setBanner_image(delbanner);
		}
		else
		{
			String fileName = file.getOriginalFilename();
			saveeditbann.setBanner_image(fileName);
			String uploadpath = context.getRealPath("")+File.separator+"img"+File.separator+"banner";
			System.out.println("uploadpath is" +uploadpath);
			   File targetFile = new File(uploadpath, fileName);  
			   try {
				file.transferTo(targetFile);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			   File delFile = new File(uploadpath, delbanner);  
			   delFile.delete();
			
		}
		bannerservice.updatebanner(saveeditbann);
		return"redirect:/adminbanner";
		
	}
	
	@Autowired
	private AdminaboutusService aboutusservice;
	
	@RequestMapping(value="/adminabout")
	public ModelAndView adminaboutController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Akcpaboutusimage aboutimg = aboutusservice.getaboutusimage(1);
		ModelAndView mv = new ModelAndView();
		mv.addObject("aboutusimg", aboutimg);
		mv.setViewName("adminabout");
		return mv;
	}
	
	@RequestMapping(value="/editaboutusimg")
	public ModelAndView editaboutusimgController(@RequestParam("about_id")int about_id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Akcpaboutusimage editaboutus = aboutusservice.getaboutusimage(about_id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminaboutusedit");
		mv.addObject("editaboutsimg", editaboutus);
		return mv;
	}
	
	@RequestMapping(value="/saveeditaboutusimg")
	public String saveeditaboutusimgController(@RequestParam("delaboutfile")String delaboutfile,@ModelAttribute("editaboutsimg")Akcpaboutusimage editaboutus)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return "redirect:/admin";
		}
		MultipartFile file= editaboutus.getAboutfile();
		String fileName = file.getOriginalFilename();
		editaboutus.setAbout_image(fileName);
		String uploadpath = context.getRealPath("")+File.separator+"img"+File.separator+"about"+File.separator+"aboutus";
		System.out.println("uploadpath is" +uploadpath);
		   File targetFile = new File(uploadpath, fileName);  
		   try {
			file.transferTo(targetFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		   File delFile = new File(uploadpath, delaboutfile);  
		   delFile.delete();
		  
		   aboutusservice.updateaboutusimg(editaboutus);
		   return "redirect:/adminabout";
		
		
	}
	@Autowired
	private AdminhomeaboutusService homeaboutservice;
	
	@RequestMapping(value="/adminhomeaboutus")
	public ModelAndView adminhomeaboutusController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Akcphomeaboutusimage homeabtimg = homeaboutservice.gethomeaboutusimage(1);
		ModelAndView mv = new ModelAndView();
		mv.addObject("homeaboutimg", homeabtimg);
		mv.setViewName("adminhomeabout");
		return mv;
		
	}
	
	@RequestMapping(value="/edithomeaboutusimg")
	public ModelAndView edithomeaboutusimgController(@RequestParam("homeabout_id")int homeabout_id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Akcphomeaboutusimage edithomeaboutimg = homeaboutservice.gethomeaboutusimage(homeabout_id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhomeaboutusedit");
		mv.addObject("edithmaboutsimg", edithomeaboutimg);
		return mv;
	}	
	
	@RequestMapping(value="/saveedithomeaboutusimg")
	public String saveedithomeaboutusimgController(@RequestParam("delaboutfile")String delaboutfile,@ModelAttribute("edithmaboutsimg")Akcphomeaboutusimage edithomeaboutus)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return "redirect:/admin";
		}
		MultipartFile file= edithomeaboutus.getHomeaboutfile();
		String fileName = file.getOriginalFilename();
		edithomeaboutus.setHomeabout_image(fileName);
		String uploadpath = context.getRealPath("")+File.separator+"img"+File.separator+"about"+File.separator+"home";
		System.out.println("uploadpath is" +uploadpath);
		   File targetFile = new File(uploadpath, fileName);  
		   try {
			file.transferTo(targetFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		   File delFile = new File(uploadpath, delaboutfile);  
		   delFile.delete();
		  
		   homeaboutservice.updatehomeaboutusimg(edithomeaboutus);
		   return "redirect:/adminhomeaboutus";
	}
	@Autowired
	private AdminfeedbackService feedbackservice;
	
	@RequestMapping(value="/userfeedback")
	public ModelAndView userfeedbackController(@ModelAttribute("userfeed")Akcpfeedback feedback)
	{
		feedbackservice.savefeedback(feedback);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("feedbackpopup");
		return mv;
		
	}
}

