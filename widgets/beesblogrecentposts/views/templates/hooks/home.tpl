{if !empty($beesblogRecentPostsPosts)}

    <div id="beesblog_column" class="col-xs-12 col-sm-12">
        <h2 class="title_block">
            <a href="{$beesblogRecentPostsBlogUrl|escape:'htmlall':'UTF-8'}" title="{l s='Recent posts' mod='beesblogrecentposts'}">{l s='Recent posts' mod='beesblogrecentposts'}</a>
        </h2>
                {foreach $beesblogRecentPostsPosts as $post}
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <div class="beesblogrecentposts-content">
                            <h2>
                                <a class="beesblogrecentposts-title" href="{$post->link|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}">
                                    {$post->title|truncate:'20'|escape:'htmlall':'UTF-8'}
                                </a>
                            </h2>
                            <span>
                                <i class="icon icon-calendar"></i> {$post->published|date_format}
                                <i class="icon icon-eye"></i> {$post->viewed|intval}
                            </span>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
{/if}