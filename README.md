# redirect-301-hook

Hi!

I am a Liferay Hook of /html/common/forward_jsp.jsp created for making possible to set which pages are going to be redirect with HTTP STATUS 301. I was created because Liferay 6.2 redirects its pages with HTTP STATUS 302 by default.

How to use me:
1) Go to control panel > Custom  Fields > Site > Add a Custom Filed
2)  Set its name (Key) as 'pages-with-redirect-301'
3) Set its type as 'indexed text field'
4) Very important! -> Give permission of View for Guest role
5) Go to the Site you want > Site Administration > Configuration > Site Settings > Custom Fields
6) Enter the friendlyURLs of destination you want to redirect with HTTP STATUS 301.

Obs: 
1. Multilple URLs are allowed separated by comma.
2. The given friendlyURLs correspond to the URL of origin, not to destination URLs

Nice to meet you! ;)
