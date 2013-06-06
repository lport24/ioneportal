package com.ione;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.PortletRequestDispatcher;
import javax.portlet.PortletURL;
import javax.portlet.RenderMode;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import com.liferay.portal.kernel.servlet.SessionMessages;
import com.liferay.portal.kernel.upload.UploadPortletRequest;
import com.liferay.portal.kernel.util.FileUtil;
import com.liferay.portal.util.PortalUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class BestDesign
 */
public class BestDesign extends MVCPortlet {
 
	/*
	public void doView(RenderRequest request, 
	RenderResponse response) throws PortletException{
		
		System.out.println("inside view");
		
		PortletURL succssURL=response.createRenderURL();
		succssURL.setParameter("jspPage", "/html/bestdesign/success.jsp");
		
		System.out.println("rurl: "+succssURL);
		request.setAttribute("rurl", succssURL);
		
		
		PortletURL u=(PortletURL) request.getAttribute("rurl");
		
		
		System.out.println("attribute rurl : "+u);
		response.setProperty("jspPage", "/docroot/html/bestdesign/view.jsp");
		
	
		PortletRequestDispatcher rd=getPortletContext().getRequestDispatcher("/docroot/html/bestdesign/view.jsp");
		try {
			rd.forward(request, response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} 
	
	*/
	public void saveImg(ActionRequest actionRequest,
			ActionResponse actionResponse)
			throws IOException, PortletException {
			
			
			System.out.println("inside save img.................");
			
			UploadPortletRequest uploadRequest = PortalUtil.getUploadPortletRequest(actionRequest);
			//File file = uploadRequest.getFile("image");
			//System.out.println(" file iS  "+file);
			
			InputStream in = new BufferedInputStream(uploadRequest.getFileAsStream("image"));
			System.out.println(" file iS....  "+in);
			String fn=uploadRequest.getFileName("image");
			System.out.println("file name :"+fn);
			
			String path=getPortletContext().getRealPath("/");
			String rpath=path+"/img/"+fn;
			//System.out.println("img siZe="+file.getName());
			System.out.println("real path---:"+path);
			File f=new File(rpath);
			FileOutputStream fos=new FileOutputStream(f);
			byte[] imgb=FileUtil.getBytes(in);
			
			fos.write(imgb);
			
			System.out.println(fn +"  image successfully loaded..");
		//	actionResponse.setRenderParameter("jspPage", "/html/saveimg/success.jsp");
			
			String successMsg = "Image saved Successfully!";

			SessionMessages.add(actionRequest, "request_processed", successMsg);
			
	}
}
