package com.ione;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;

import com.liferay.portal.kernel.upload.UploadPortletRequest;
import com.liferay.portal.kernel.util.FileUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.util.PortalUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class SaveImg
 */
public class SaveImg extends MVCPortlet {
	
	
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
			
	}

}
