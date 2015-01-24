<div class="social_links">
    <a class="bookmark twitter" data-text="{$sArticle.name}" href="https://twitter.com/share?{url sArticle=$sArticle.articleID}" rel="nofollow" target="_blank"></a>
    <a class="bookmark gplus" href="https://plusone.google.com/_/+1/confirm?hl=de&url={url sArticle=$sArticle.articleID}" rel="nofollow" target="_blank"></a>
    <a class="bookmark facebook" href="http://www.facebook.com/share.php?v=4&amp;src=bm&amp;u={url sArticle=$sArticle.articleID}" rel="nofollow" target="_blank"></a>
    <a class="bookmark pinterest" href="javascript:pinIt();"></a>
    <script>
        function pinIt(){
            var e = document.createElement('script');
            e.setAttribute('type','text/javascript');
            e.setAttribute('charset','UTF-8');
            e.setAttribute('src','https://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);
            document.body.appendChild(e);
        }
    </script>
</div>