{# footer #}

{% include "search.swig" %}

<footer class="site-footer outer">
	<div class="site-footer-content inner">
		<section class="copyright">
			<a href="{{ config.root }}" title="{{ config.title }}">{{ config.title }}</a>
			&copy; {{ date(Date.now(), 'YYYY') }}
		</section>
		<nav class="site-footer-nav">
			{% for key,link in theme.footer %}
            <a href="{{ link }}" title="{{ key }}" target="_blank" rel="noopener">{{ key }}</a>
            {% endfor %}
            {{ link_to('http://www.miitbeian.gov.cn', '皖ICP备17018037号', {external: true})}}
            {{ link_to('https://hexo.io', 'Hexo', {external: true})}}
            {{ link_to('https://geekmubai.com', 'GeekMubai', {external: true})}}
        </nav>
    </div>
</footer>