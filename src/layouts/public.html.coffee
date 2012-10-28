---
title: 'Blank Canvas'
---

doctype 5
html lang: 'en', ->
	head ->
		# Standard
		meta charset: 'utf-8'
		meta 'http-equiv': 'X-UA-Compatible', content: 'IE=edge,chrome=1'
		meta 'http-equiv': 'content-type', content: 'text/html; charset=utf-8'
		meta name: 'viewport', content: 'width=device-width, initial-scale=1'
#		text @blocks.meta.join('')

		# Document
		title @document.title
		meta name: 'description', content: @document.description or ''
		meta name: 'author', content: @document.author or ''

		# Styles
#		text @blocks.styles.join('')
		link rel: 'stylesheet', href: '../styles/style.css', media: 'screen, projection'

		# Analytics
		analytics = @site.analytics or {}
		if analytics.reinvigorate?
			script src:'http://include.reinvigorate.net/re_.js'
			script """
				reinvigorate.track("#{analytics.reinvigorate}");
				"""
		if analytics.google?
			script """
				var _gaq = _gaq || [];
				_gaq.push(['_setAccount', '#{analytics.google}']);
				_gaq.push(['_trackPageview']);
				(function() {
					var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
					ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
					var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
				})();
				"""
	body ->
		# Document
		div class: 'container', ->
			text @content

		# Scripts
#		text @blocks.scripts.join('')
		script src: '../vendor/jquery-1.6.4.min.js'
		script src: '../vendor/prettify.js'
		script src: '../scripts/script.js'
