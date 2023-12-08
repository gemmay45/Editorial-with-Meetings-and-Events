<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html lang="en">
<head>
    <#include "/templates/web/fragments/head.ftl">
    <@crafter.head/>
</head>
<body id="grand" class="default-device bodyclass">
<@crafter.body_top/>
<!-- Wrapper -->
<div id="wrapper">

    <div id="main">
    	<!-- Main -->
       <main>
        <div class="inner">
    
            <!-- Header -->
            <#--<@renderComponent component=contentModel.header_o.item />-->

    <#--<@crafter.section $model=contentModel>-->
            <@crafter.renderComponentCollection $field="pageSections_o" $model=contentModel/>
    <#--</@crafter.section>-->
    
            </div>
      </main>
    </div>
    
  <!-- Left Rail -->
  <@renderComponent component=contentModel.left_rail_o.item />

</div>


<!-- footer -->
<footer>
        <div id="footer" class="">
            <div class="row">
    <div class="component brand-newsletter-form-wrapper col-12">
        <div class="component-content">
<h2 class="newsletter-form-title">Keep in touch with Nina</h2>
<div class="vertical-line for-desktop"></div>
<div class="horizontal-line for-tablet"></div>
<div class="row">



<div class="component sitecore-form brand-newsletter-right">
    <div class="component-content">
        <div class="row"><form action="/formbuilder?sc_site=Nina&amp;fxb.FormItemId=a7b9878b-f0ef-47ff-9bae-20a62eabc665&amp;fxb.HtmlPrefix=fxb.28840854-e6b8-496c-b947-093739e6e6fe" data-ajax="true" data-ajax-failure="ajaxFailure(xhr, status, error);" data-ajax-method="Post" data-ajax-mode="replace-with" data-ajax-success="$.validator.unobtrusive.parse('#fxb_28840854-e6b8-496c-b947-093739e6e6fe_a7b9878b-f0ef-47ff-9bae-20a62eabc665');$.fxbFormTracker.parse('#fxb_28840854-e6b8-496c-b947-093739e6e6fe_a7b9878b-f0ef-47ff-9bae-20a62eabc665');$.fxbConditions.parse('#fxb_28840854-e6b8-496c-b947-093739e6e6fe_a7b9878b-f0ef-47ff-9bae-20a62eabc665')" data-ajax-update="#fxb_28840854-e6b8-496c-b947-093739e6e6fe_a7b9878b-f0ef-47ff-9bae-20a62eabc665" data-sc-fxb="a7b9878b-f0ef-47ff-9bae-20a62eabc665" enctype="multipart/form-data" id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_a7b9878b-f0ef-47ff-9bae-20a62eabc665" method="post" novalidate="novalidate"><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_FormSessionId" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.FormSessionId" type="hidden" value="0c713e41-ea58-499b-878f-f78c45ab874f"><input name="__RequestVerificationToken" type="hidden" value="guZ8Dg9cPwppVkVNkx1ChFmBbu8L6JQ5vKgwJzGlDgj2ovn4FAUrRwG8dv4UNlGMF-MaiCSWbVjn0BrMcJl8DVSpS84QP09rWUtb0akYNwE1"><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_FormItemId" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.FormItemId" type="hidden" value="a7b9878b-f0ef-47ff-9bae-20a62eabc665"><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_PageItemId" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.PageItemId" type="hidden" value="d0418d92-b4e4-4f20-ae34-d0407a83de98">
<div data-sc-field-key="00C7B80689FA4E988603158113298658" class="brand-newsletter-submit-row">
    <input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_Index_19d3db07-58bd-4c1a-b1f1-8921cf95b0d2" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields.Index" type="hidden" value="19d3db07-58bd-4c1a-b1f1-8921cf95b0d2"><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_19d3db07-58bd-4c1a-b1f1-8921cf95b0d2__ItemId" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[19d3db07-58bd-4c1a-b1f1-8921cf95b0d2].ItemId" type="hidden" value="19d3db07-58bd-4c1a-b1f1-8921cf95b0d2">    <input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_19d3db07-58bd-4c1a-b1f1-8921cf95b0d2__Value" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[19d3db07-58bd-4c1a-b1f1-8921cf95b0d2].Value" type="hidden" value="" data-sc-tracking="True" data-sc-field-name="Firstname" data-sc-field-key="3660CBBA30A54D1E9713705FB6A0B75D">  
<input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_Index_8cb49486-f791-4d41-be26-ee68613b37f8" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields.Index" type="hidden" value="8cb49486-f791-4d41-be26-ee68613b37f8"><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_8cb49486-f791-4d41-be26-ee68613b37f8__ItemId" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[8cb49486-f791-4d41-be26-ee68613b37f8].ItemId" type="hidden" value="8cb49486-f791-4d41-be26-ee68613b37f8">    <input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_8cb49486-f791-4d41-be26-ee68613b37f8__Value" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[8cb49486-f791-4d41-be26-ee68613b37f8].Value" type="hidden" value="" data-sc-tracking="True" data-sc-field-name="Lastname" data-sc-field-key="5C2E247C3ABA43C0A6B7BEF1939ACF8B">  
<input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_Index_7f3b49ed-2563-4200-b09c-f01325259a39" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields.Index" type="hidden" value="7f3b49ed-2563-4200-b09c-f01325259a39"><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_7f3b49ed-2563-4200-b09c-f01325259a39__ItemId" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[7f3b49ed-2563-4200-b09c-f01325259a39].ItemId" type="hidden" value="7f3b49ed-2563-4200-b09c-f01325259a39"><label for="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_7f3b49ed-2563-4200-b09c-f01325259a39__Value" class=""></label>
<input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_7f3b49ed-2563-4200-b09c-f01325259a39__Value" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[7f3b49ed-2563-4200-b09c-f01325259a39].Value" class="brand-newsletter-email-input" type="email" value="" maxlength="255" placeholder="Email address" data-sc-tracking="True" data-sc-field-name="Email" data-sc-field-key="E8689D8FB8C94FF9893E9865667A6D1B" data-val-regex=" contains an invalid email address." data-val-regex-pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,17}$" data-val="true">
<span class="field-validation-valid" data-valmsg-for="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[7f3b49ed-2563-4200-b09c-f01325259a39].Value" data-valmsg-replace="true"></span>

<input value="Subscribe" type="submit" class="brand-newsletter-submit-btn check-terms" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.a28fb113-0fed-4ac1-b145-36d597b6df01" data-sc-field-key="337E07726C714F44B84113D043CC7A57">
<input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_NavigationButtons" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.NavigationButtons" type="hidden" value="a28fb113-0fed-4ac1-b145-36d597b6df01">
<input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_a28fb113-0fed-4ac1-b145-36d597b6df01" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.a28fb113-0fed-4ac1-b145-36d597b6df01" type="hidden" value="0">
</div>
<div data-sc-field-key="D0AE635D08EE4209A892E1EDD39B7529" class="brand-newsletter-content-span">
    <p data-sc-field-key="37288ACC6D5045C1B321B340AAE59D7E" class="form__error-msg" style="display: block;">Please enter a valid email address</p><p class="brand-newsletter-content-text">By entering your email address you agree to our <a href="https://www.ninahotelgroup.com/en/privacy-policy" target="_blank" rel="noopener noreferrer">Privacy Policy</a> and consent to receive emails from Nina Hospitality.</p>
</div>
<div data-sc-field-key="D1FCC43CBCFB4D64BF1F8C003FF7B73A" class="custom__form__checkbox newsletter">
    <p data-sc-field-key="7AD7ECAB7CE84C778B5638D4E76F6752" class="custom__form__checkbox--title-yes-no required" aria-required="true">Are you resided or located in Mainland China?</p><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_Index_715458c4-c3c5-4c8a-adeb-2330c84bc838" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields.Index" type="hidden" value="715458c4-c3c5-4c8a-adeb-2330c84bc838"><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_715458c4-c3c5-4c8a-adeb-2330c84bc838__ItemId" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[715458c4-c3c5-4c8a-adeb-2330c84bc838].ItemId" type="hidden" value="715458c4-c3c5-4c8a-adeb-2330c84bc838"><label class="custom__form__checkbox__label--yes">
    <input type="checkbox" id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_715458c4-c3c5-4c8a-adeb-2330c84bc838__Value" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[715458c4-c3c5-4c8a-adeb-2330c84bc838].Value" class="custom__form__checkbox--yes" value="true" data-sc-tracking="True" data-sc-field-name="Yes" data-sc-field-key="12C94921297E48C8952C41AF772C0FDB" data-val-required="The Value field is required." data-val="true">Yes
    <input type="hidden" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[715458c4-c3c5-4c8a-adeb-2330c84bc838].Value" value="false">
</label>
<span class="field-validation-valid" data-valmsg-for="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[715458c4-c3c5-4c8a-adeb-2330c84bc838].Value" data-valmsg-replace="true"></span><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_Index_c462201e-3a0d-463d-89a3-6efcbfed26bd" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields.Index" type="hidden" value="c462201e-3a0d-463d-89a3-6efcbfed26bd"><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_c462201e-3a0d-463d-89a3-6efcbfed26bd__ItemId" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[c462201e-3a0d-463d-89a3-6efcbfed26bd].ItemId" type="hidden" value="c462201e-3a0d-463d-89a3-6efcbfed26bd"><label class="custom__form__checkbox__label--no">
    <input type="checkbox" id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_c462201e-3a0d-463d-89a3-6efcbfed26bd__Value" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[c462201e-3a0d-463d-89a3-6efcbfed26bd].Value" class="custom__form__checkbox--no" value="true" data-sc-tracking="True" data-sc-field-name="No" data-sc-field-key="BE2B2ECBEC7A4241887AA8B5ABE8FEE1" data-val-required="The Value field is required." data-val="true">No
    <input type="hidden" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[c462201e-3a0d-463d-89a3-6efcbfed26bd].Value" value="false">
</label>
<span class="field-validation-valid" data-valmsg-for="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[c462201e-3a0d-463d-89a3-6efcbfed26bd].Value" data-valmsg-replace="true"></span><span class="form__error-msg">Please enter.</span>
</div>
<div data-sc-field-key="E02581A0A4D54862AF072B9D89A79A37" class="custom__form__checkbox  newsletter step2">
    <p class="custom_form__checkbox--title">Please tick the required fields *</p>
<p class="custom_form__checkbox--title">If you are resided or located in Mainland China, then before using our services, please read carefully our <a rel="noopener noreferrer" href="https://www.ninahotelgroup.com/en/privacy-policy" target="_blank">Privacy Policy</a>&nbsp;and its <a rel="noopener noreferrer" href="https://www.ninahotelgroup.com/en/privacy-policy#prc-addendum" target="_blank">addendum</a>, and tick the box before the item that applies to your situation: </p><span class="form__error-msg">You must read our Privacy Policy and its addendum carefully, and agree to the terms and conditions below.</span><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_Index_4b4d7225-0eef-4e96-ad73-0a825fc5e914" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields.Index" type="hidden" value="4b4d7225-0eef-4e96-ad73-0a825fc5e914"><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_4b4d7225-0eef-4e96-ad73-0a825fc5e914__ItemId" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[4b4d7225-0eef-4e96-ad73-0a825fc5e914].ItemId" type="hidden" value="4b4d7225-0eef-4e96-ad73-0a825fc5e914"><label class="custom__form__checkbox__label--item required" aria-required="true">
    <input type="checkbox" id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_4b4d7225-0eef-4e96-ad73-0a825fc5e914__Value" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[4b4d7225-0eef-4e96-ad73-0a825fc5e914].Value" class="custom__form__checkbox--item " value="true" data-sc-tracking="True" data-sc-field-name="checkbox_1" data-sc-field-key="AA30E65D3F8C4C709DCF4FF265C8F6EF" data-val-required="The Value field is required." data-val="true">I have fully read and understood the contents of the Privacy Policy of Nina Hospitality and its addendum. I agree that Nina Hospitality may process and protect the personal data that I provide to Nina Hospitality pursuant to the Privacy Policy and its addendum. 
    <input type="hidden" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[4b4d7225-0eef-4e96-ad73-0a825fc5e914].Value" value="false">
</label>
<span class="field-validation-valid" data-valmsg-for="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[4b4d7225-0eef-4e96-ad73-0a825fc5e914].Value" data-valmsg-replace="true"></span><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_Index_f1e2f410-3c18-4e7a-a47f-1ae5836beacf" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields.Index" type="hidden" value="f1e2f410-3c18-4e7a-a47f-1ae5836beacf"><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_f1e2f410-3c18-4e7a-a47f-1ae5836beacf__ItemId" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[f1e2f410-3c18-4e7a-a47f-1ae5836beacf].ItemId" type="hidden" value="f1e2f410-3c18-4e7a-a47f-1ae5836beacf"><label class="custom__form__checkbox__label--item required" aria-required="true">
    <input type="checkbox" id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_f1e2f410-3c18-4e7a-a47f-1ae5836beacf__Value" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[f1e2f410-3c18-4e7a-a47f-1ae5836beacf].Value" class="custom__form__checkbox--item" value="true" data-sc-tracking="True" data-sc-field-name="checkbox_2" data-sc-field-key="9B8CA680422B46E381F897EB1B37C3B1" data-val-required="The Value field is required." data-val="true">I understand and acknowledge that the personal data that I provide to Nina Hospitality may contain sensitive personal information, and I agree to authorize Nina Hospitality to process such sensitive personal information pursuant to the Privacy Policy and its addendum.
    <input type="hidden" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[f1e2f410-3c18-4e7a-a47f-1ae5836beacf].Value" value="false">
</label>
<span class="field-validation-valid" data-valmsg-for="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[f1e2f410-3c18-4e7a-a47f-1ae5836beacf].Value" data-valmsg-replace="true"></span><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_Index_c0f59d71-ce27-46f9-9cd1-32fd01e7655d" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields.Index" type="hidden" value="c0f59d71-ce27-46f9-9cd1-32fd01e7655d"><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_c0f59d71-ce27-46f9-9cd1-32fd01e7655d__ItemId" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[c0f59d71-ce27-46f9-9cd1-32fd01e7655d].ItemId" type="hidden" value="c0f59d71-ce27-46f9-9cd1-32fd01e7655d"><label class="custom__form__checkbox__label--item required" aria-required="true">
    <input type="checkbox" id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_c0f59d71-ce27-46f9-9cd1-32fd01e7655d__Value" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[c0f59d71-ce27-46f9-9cd1-32fd01e7655d].Value" class="custom__form__checkbox--item" value="true" data-sc-tracking="True" data-sc-field-name="checkbox_3" data-sc-field-key="DC97349823F34FDA881B361AD001880C" data-val-required="The Value field is required." data-val="true">I agree that the personal data that I provide to Nina Hospitality may be transmitted and stored by Nina Hospitality at its domicile or any other location it may designate. 
    <input type="hidden" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[c0f59d71-ce27-46f9-9cd1-32fd01e7655d].Value" value="false">
</label>
<span class="field-validation-valid" data-valmsg-for="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[c0f59d71-ce27-46f9-9cd1-32fd01e7655d].Value" data-valmsg-replace="true"></span><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_Index_be989449-7620-4390-a943-ce3a18288e23" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields.Index" type="hidden" value="be989449-7620-4390-a943-ce3a18288e23"><input id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_be989449-7620-4390-a943-ce3a18288e23__ItemId" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[be989449-7620-4390-a943-ce3a18288e23].ItemId" type="hidden" value="be989449-7620-4390-a943-ce3a18288e23"><label class="custom__form__checkbox__label--item required" aria-required="true">
    <input type="checkbox" id="fxb_28840854-e6b8-496c-b947-093739e6e6fe_Fields_be989449-7620-4390-a943-ce3a18288e23__Value" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[be989449-7620-4390-a943-ce3a18288e23].Value" class="custom__form__checkbox--item" value="true" data-sc-tracking="True" data-sc-field-name="checkbox_4" data-sc-field-key="7F3F61957C9C4C4191961CE5A92A26A7" data-val-required="The Value field is required." data-val="true">I agree that Nina Hospitality may disclose to and/or share with any related third party the personal data that I provide to it, pursuant to the Privacy Policy and its addendum, if it is necessary to do so in light of its business needs.
    <input type="hidden" name="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[be989449-7620-4390-a943-ce3a18288e23].Value" value="false">
</label>
<span class="field-validation-valid" data-valmsg-for="fxb.28840854-e6b8-496c-b947-093739e6e6fe.Fields[be989449-7620-4390-a943-ce3a18288e23].Value" data-valmsg-replace="true"></span>
</div>
<script src="/scripts/newLetterNewTerms.js"></script>        <input type="hidden" data-sc-fxb-condition="" value="{
  &quot;fieldConditions&quot;: [
    {
      &quot;matchType&quot;: &quot;any&quot;,
      &quot;conditions&quot;: [
        {
          &quot;fieldId&quot;: &quot;E8689D8FB8C94FF9893E9865667A6D1B&quot;,
          &quot;operator&quot;: &quot;contains&quot;,
          &quot;value&quot;: &quot;@&quot;
        }
      ],
      &quot;actions&quot;: [
        {
          &quot;fieldId&quot;: &quot;37288ACC6D5045C1B321B340AAE59D7E&quot;,
          &quot;actionType&quot;: &quot;hide&quot;,
          &quot;value&quot;: null
        }
      ]
    },
    {
      &quot;matchType&quot;: &quot;any&quot;,
      &quot;conditions&quot;: [
        {
          &quot;fieldId&quot;: &quot;E8689D8FB8C94FF9893E9865667A6D1B&quot;,
          &quot;operator&quot;: &quot;does not contain&quot;,
          &quot;value&quot;: &quot;@&quot;
        },
        {
          &quot;fieldId&quot;: &quot;E8689D8FB8C94FF9893E9865667A6D1B&quot;,
          &quot;operator&quot;: &quot;is equal to&quot;,
          &quot;value&quot;: &quot;&quot;
        }
      ],
      &quot;actions&quot;: [
        {
          &quot;fieldId&quot;: &quot;37288ACC6D5045C1B321B340AAE59D7E&quot;,
          &quot;actionType&quot;: &quot;show&quot;,
          &quot;value&quot;: null
        }
      ]
    }
  ]
}">
</form>
</div>
    </div>
</div>

</div>        </div>
    </div>

    <div class="component nina-footer-wrapper nina-footer-wrapper col-12">
        <div class="component-content">



















<!--/en/nina-hotel-tsuen-wan-west-->
<div class="footer-top-wrapper">
    <div class="footer-top-col-wrapper">
        <div class="footer-top-left-part">
            <h3 class="footer-col-title">Nina Hotel Tsuen Wan West</h3>
            <div class="footer-info-content-wrapper">
                
                
                
                
                
                
                
                <a rel="noopener noreferrer" class="footer-info-address footer-col-link">8 Yeung Uk Road, Tsuen Wan, Hong Kong</a>
                
                <a href="tel:+85222802898" rel="noopener noreferrer" class="footer-info-contact-phone footer-col-link">+852 2280 2898</a>
                
                <a href="mailto:info.tww@ninahotelgroup.com" rel="noopener noreferrer" class="footer-info-contact-email footer-col-link">info.tww@ninahotelgroup.com</a>
                
                
                
                
            </div>
        </div>
        <div class="footer-top-right-part">
            
            
            
            
            <div class="footer-col-wrapper">
                <h3>About</h3>
                
                
                <ul>
                    
                    <li>
                        <a href="/en" rel="noopener noreferrer" class="footer-col-link">Nina Hospitality</a>
                    </li>
                    
                    <li>
                        <a href="/en/hotels-and-residences" rel="noopener noreferrer" class="footer-col-link">Hotels and residences</a>
                    </li>
                    
                    <li>
                        <a href="/en/careers" rel="noopener noreferrer" class="footer-col-link">Careers</a>
                    </li>
                    
                    <li>
                        <a href="/en/nina-hotel-tsuen-wan-west/contact-us" rel="noopener noreferrer" class="footer-col-link">Contact us</a>
                    </li>
                    
                    <li>
                        <a href="https://www.chinachemgroup.com/en/" rel="noopener noreferrer" class="footer-col-link" target="_blank">Chinachem Group</a>
                    </li>
                    
                </ul>
                
            </div>
            
            
            
            
            
            <div class="footer-col-wrapper">
                <h3>Enjoy</h3>
                
                
                <ul>
                    
                    <li>
                        <a href="/en/nina-hotel-tsuen-wan-west/rooms" rel="noopener noreferrer" class="footer-col-link">Rooms</a>
                    </li>
                    
                    <li>
                        <a href="/en/nina-hotel-tsuen-wan-west/dining" rel="noopener noreferrer" class="footer-col-link">Restaurants</a>
                    </li>
                    
                    <li>
                        <a href="/en/nina-hotel-tsuen-wan-west/offers" rel="noopener noreferrer" class="footer-col-link">Offers</a>
                    </li>
                    
                    <li>
                        <a href="/en/nina-hotel-tsuen-wan-west/meetings-and-events" rel="noopener noreferrer" class="footer-col-link">Meetings and events</a>
                    </li>
                    
                    <li>
                        <a href="/en/nina-hotel-tsuen-wan-west/weddings" rel="noopener noreferrer" class="footer-col-link">Weddings</a>
                    </li>
                    
                </ul>
                
            </div>
            
            
            
            
            
            <div class="footer-col-wrapper">
                <h3>Support</h3>
                
                
                <ul>
                    
                    <li>
                        <a href="/en/news/latest-news" rel="noopener noreferrer" class="footer-col-link">Latest news</a>
                    </li>
                    
                    <li>
                        <a href="/en/nina-hotel-tsuen-wan-west/news/awards-and-accolades" rel="noopener noreferrer" class="footer-col-link">Awards and accolades</a>
                    </li>
                    
                    <li>
                        <a rel="noopener noreferrer" class="footer-col-link">Multimedia library</a>
                    </li>
                    
                    <li>
                        <a href="/en/nina-hotel-tsuen-wan-west/news/fact-sheet" rel="noopener noreferrer" class="footer-col-link">Fact sheet</a>
                    </li>
                    
                    <li>
                        <a href="/en/gds" rel="noopener noreferrer" class="footer-col-link">GDS Code</a>
                    </li>
                    
                </ul>
                
            </div>
            
            
            
            
            
            <div class="footer-col-wrapper">
                <h3>Loyalty Programme&ZeroWidthSpace;</h3>
                
                
                <ul>
                    
                    <li>
                        <a href="https://www.chinachemgroup.com/ccg-hearts" rel="noopener noreferrer" class="footer-col-link">CCG Hearts</a>
                    </li>
                    
                </ul>
                
            </div>
            
            
        </div>
    </div>
    
    <div class="footer-top-scroll-wrapper">
        
        
        <!--/sitecore/content/Nina/Nina/Nina Dictionary/Scroll To Top-->
        <a class="footer-top-scroll-btn" title="Scroll To Top">Scroll to top</a>
    </div>
    
</div>
<div class="footer-bottom-wrapper">
    <div class="footer-bottom-left-part">
        <div class="row">
            <div class="component link-list col-12">
                <div class="component-content">
                    <ul>
                        
                        
                        
                        
                        
                        
                        
                        <li>
                            <div class="field-link">
                                <a href="https://www.facebook.com/ninahoteltsuenwanwest/" rel="noopener noreferrer" class=" footer-social-facebook" target="_blank">Facebook</a>
                            </div>
                        </li>
                        
                        <li>
                            <div class="field-link">
                                <a href="https://www.instagram.com/ninahoteltsuenwanwest/" rel="noopener noreferrer" class=" footer-social-instagram" target="_blank">Instagram</a>
                            </div>
                        </li>
                        
                        <li>
                            <div class="field-link">
                                <a href="https://hk.linkedin.com/company/ninahospitality" rel="noopener noreferrer" class=" footer-social-linkin" target="_blank">LinkedIn</a>
                            </div>
                        </li>
                        
                        
                        
                        
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-bottom-upload-text-wrapper">
            <span class="footer-bottom-upload-text"></span>
        </div>
    </div>

    <div class="footer-bottom-right-part">
        <div class="footer-bottom-right-part-content">
            <span class="footer-bottom-right-copyright">© 2023 Nina Hospitality</span>
            <span class="vertical-line"></span>
            <a href="/en/disclaimer" rel="noopener noreferrer" class="footer-bottom-right-link">Disclaimer</a>
            <span class="vertical-line"></span>
            <a href="/en/privacy-policy" rel="noopener noreferrer" class="footer-bottom-right-link">Privacy Policy</a>
        </div>
        <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/logos/footer/amemberofchinachem-logo-revised.svg?rev=e41a6198a7cc4b988769b6791b85bd48" class="footer-bottom-right-part-logo">
    </div>
</div>        </div>
    </div>
</div>
        </div>
    </footer>
<!-- footer end -->

<#include "/templates/web/fragments/scripts.ftl">

<@crafter.body_bottom/>
</body>
</html>
