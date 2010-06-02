{if isset($errors) && $errors}
	<div class="error">
		<p>{if $errors|@count > 1}{l s='There are'}{else}{l s='There is'}{/if} {$errors|@count} {if $errors|@count > 1}{l s='errors'}{else}{l s='error'}{/if} :</p>
		<ol>
		{foreach from=$errors key=k item=error}
			<li>{$error}</li>
		{/foreach}
		</ol>
		{capture name=referrer assign=isValidReferer}
			{isInternReferer var=$smarty.server.HTTP_REFERER}
		{/capture}
		<p><a href="{if $isValidReferer == 1}{$smarty.server.HTTP_REFERER|escape:'htmlall':'UTF-8'}{else}{$base_dir}{/if}" class="button_small" title="{l s='Back'}">&laquo; {l s='Back'}</a></p>
	</div>
{/if}
