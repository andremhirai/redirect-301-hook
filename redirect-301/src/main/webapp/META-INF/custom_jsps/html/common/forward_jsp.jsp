<%--
/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * The contents of this file are subject to the terms of the Liferay Enterprise
 * Subscription License ("License"). You may not use this file except in
 * compliance with the License. You can obtain a copy of the License by
 * contacting Liferay, Inc. See the License for the specific language governing
 * permissions and limitations under the License, including but not limited to
 * distribution rights of the Software.
 *
 *
 *
 */
--%>
<%@ include file="/html/common/forward_common.jsp"%>
<% 
	if(GroupLocalServiceUtil.getGroup(themeDisplay.getSiteGroup().getGroupId()).getExpandoBridge()!=null && GroupLocalServiceUtil.getGroup(themeDisplay.getSiteGroup().getGroupId()).getExpandoBridge().getAttributes().containsKey("pages-with-redirect-301")){
		Serializable pagesWith301Redirect = GroupLocalServiceUtil.getGroup(themeDisplay.getSiteGroup().getGroupId()).getExpandoBridge().getAttribute("pages-with-redirect-301");
		List<String> pagesWith301RedirectList = Arrays.asList(pagesWith301Redirect.toString().replace(" ","").split(","));

		boolean foundUrl301 = false;
		
		for (String url : pagesWith301RedirectList){

			if(!url.isEmpty() && url.equals(originURL)){
				response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
	 			response.setHeader("Location", forwardURL);
	 			foundUrl301 = true;
	 			break;
			}

		}
		if (!foundUrl301){
			response.sendRedirect(forwardURL);
		}

	}else{	
		response.sendRedirect(forwardURL);
	}

%>
