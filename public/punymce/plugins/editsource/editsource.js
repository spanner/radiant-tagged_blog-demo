(function(a){a.plugins.EditSource=function(c){var d=a.DOM,g=a.extend,f=a.each,e=a.isWebKit;var b=0;if(!c.settings.editsource||c.settings.editsource.skip_css){d.loadCSS(a.baseURL+"/plugins/editsource/css/editor.css")}c.onBeforeGetContent.add(function(h,i){if(i.save&&b){h.setContent(d.get(h.settings.id+"_editsourcearea").value,{load:true})}});g(c.commands,{mceEditSource:function(r,q,o){var k,j=c.getIfr(),i=c.settings.id,p=c.width,l=c.height,n,m=d.get(i+"_editsource");if(!b){d.addClass(m,"active");f(d.select("li",i+"_c"),function(h){if(h!=m){d.addClass(h,"disabled")}});k=d.add(j.parentNode,"textarea",{id:i+"_editsourcearea","class":"editsource",style:"width:"+p+"px;height:"+l+"px;"});k.value=c.getContent({save:true});k.focus();if(!e){d.add(j.parentNode,"div",{id:i+"_edspacer","class":"spacer",style:"width:"+p+"px;height:"+l+"px;"});j.style.display="none"}b=1;return false}b=0;d.removeClass(m,"active");if(!e){j.style.display="block";k=d.get(i+"_edspacer");k.parentNode.removeChild(k)}k=d.get(i+"_editsourcearea");c.setContent(k.value,{load:true});k.parentNode.removeChild(k);f(d.select("li",i+"_c"),function(h){d.removeClass(h,"disabled")});return false}});g(c.tools,{editsource:{cmd:"mceEditSource",title:a.I18n.editsource}})};a.extend(a.I18n,{editsource:"Edit HTML source"})})(punymce);