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
		text @blocks.meta.join('')

		# Document
		title @document.title
		meta name: 'description', content: @document.description or ''
		meta name: 'author', content: @document.author or ''

		# Styles
		text @blocks.styles.join('')
		link rel: 'stylesheet', href: '../styles/style.css', media: 'screen, projection'
	body ->
		# Document
		div class: 'container', ->
			text @content

		# Scripts
		text @blocks.scripts.join('')
		script src: '../vendor/jquery-1.6.4.min.js'
		script src: '../vendor/prettify.js'
		script src: '../scripts/script.js'
