<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false displayWide=false showAnotherWayIfPresent=true>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
          "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml" class="${properties.kcHtmlClass!}">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="robots" content="noindex, nofollow">

      <#if properties.meta?has_content>
          <#list properties.meta?split(' ') as meta>
            <meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
          </#list>
      </#if>
    <title>${msg(realm.displayName)}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico"/>
    <link href="${url.resourcesPath}/css/login.css" rel="stylesheet"/>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
          <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
    <#if scripts??>
        <#list scripts as script>
          <script src="${script}" type="text/javascript"></script>
        </#list>
    </#if>
  </head>
  <body class="">
  <div id="kc-form">
    <div id="kc-form-wrapper" class="">
      <div id="kc-form-login-header-only-1024">
        <img src="${url.resourcesPath}/img/logo-black.svg" alt="">
        <h1>Добро пожаловать в&nbsp;ЛИГУ</h1>
        <h3>Войдите в&nbsp;свою учетную запись</h3>
      </div>
      <div id="kc-form-login-wrapper">
        <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
          <div id="error-box" class="alert alert-${message.type}">
              ${kcSanitize(message.summary)?no_esc}
          </div>
        </#if>
        <label id="kc-form-login-label" for="kc-form-login">Авторизация</label>
          <#nested "form">
        <div id="kc-footer-info">
          <span id="title-info">Связаться со службой поддержки</span>
          <a href="https://hd.phoenixit.ru" target="_blank" class="kc-footer-info-link">hd.phoenixit.ru</a>
          <a href="mailto:helpdesk@phoenixit.ru" class="kc-footer-info-link">helpdesk@phoenixit.ru</a>
          <a href="tel:+7 903 015 75 15" class="kc-footer-info-link">+7 903 015 75 15</a>
        </div>
      </div>
    </div>
    <div id="kc-form-welcome-wrapper">
      <img src="${url.resourcesPath}/img/logo-white.svg" alt="">
      <h1>Добро пожаловать<br>в&nbsp;ЛИГУ</h1>
      <h3>Войдите в&nbsp;свою учетную запись</h3>
    </div>
  </div>
  </body>
  </html>
</#macro>
