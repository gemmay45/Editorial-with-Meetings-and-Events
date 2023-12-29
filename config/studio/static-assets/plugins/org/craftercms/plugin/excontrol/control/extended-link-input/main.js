/*
 * Copyright (C) 2007-2022 Crafter Software Corporation. All Rights Reserved.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as published by
 * the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

CStudioForms.Controls.extendedLinkInput =
  CStudioForms.Controls.extendedLinkInput ||
  function (id, form, owner, properties, constraints, readonly) {
    this.owner = owner;
    this.owner.registerField(this);
    this.errors = [];
    this.properties = properties;
    this.constraints = constraints;
    this.inputEl = null;
    this.patternErrEl = null;
    /*this.countEl = null;*/
    this.required = false;
    this.value = '_not-set';
    this.form = form;
    this.id = id;
    this.readonly = readonly;

    return this;
  };

YAHOO.extend(CStudioForms.Controls.extendedLinkInput, CStudioForms.CStudioFormField, {
  getLabel: function () {
    return "Extended Link Input";
  },

  _onChange: function (evt, obj) {
    obj.value = obj.inputEl.value;

    var validationExist = false;
    var validationResult = true;
    if (obj.required) {
      if (obj.inputEl.value == '') {
        obj.setError('required', 'Field is Required');
        validationExist = true;
        validationResult = false;
      } else {
        obj.clearError('required');
      }
    } else {
      var id = obj.id;
      if (obj.inputEl.value != '') {
        var fields = obj.owner.fields.forEach(function (item) {
          var el = item;
          var properties = item.properties.forEach(function (prop) {
            if (prop.name == 'depends') {
              if (id.includes(prop.value) && prop.value != '' && el.value == '_blank') {
                el.required = true;
                el.setError('required', 'Field is Required');
                el.renderValidation(true, false);
                var constraints = el.constraints.forEach(function (constr) {
                  if (constr.name == 'required') {
                    constr.value = 'true';
                  }
                });
              }
            }
          });
        });
      } else {
        var fields = obj.owner.fields.forEach(function (item) {
          var el = item;
          var properties = item.properties.forEach(function (prop) {
            if (prop.name == 'depends') {
              if (id.includes(prop.value) && prop.value != '') {
                el.required = false;
                el.clearError('required');
                el.renderValidation(false, false);
                var constraints = el.constraints.forEach(function (constr) {
                  if (constr.name == 'required') {
                    constr.value = 'false';
                  }
                });
              }
            }
          });
        });
      }
    }

    if ((!validationExist && obj.inputEl.value != '') || (validationExist && validationResult)) {
      for (var i = 0; i < obj.constraints.length; i++) {
        var constraint = obj.constraints[i];
        if (constraint.name == 'pattern') {
          var regex = constraint.value;
          if (regex != '') {
            if (obj.inputEl.value.match(regex)) {
              // only when there is no other validation mark it as passed
              obj.clearError('pattern');
              YAHOO.util.Dom.removeClass(obj.patternErrEl, 'on');
              validationExist = true;
            } else {
              if (obj.inputEl.value != '') {
                YAHOO.util.Dom.addClass(obj.patternErrEl, 'on');
              }
              obj.setError('pattern', 'The value entered is not allowed in this field.');
              validationExist = true;
              validationResult = false;
            }
          }

          break;
        }
      }
    }
    // actual validation is checked by # of errors
    // renderValidation does not require the result being passed
    obj.renderValidation(validationExist, validationResult);
    obj.owner.notifyValidation();
    obj.form.updateModel(obj.id, obj.getValue());
  },

  _onChangeVal: function (evt, obj) {
    obj.edited = true;
    this._onChange(evt, obj);
  },

  /**
   * perform count calculation on keypress
   * @param evt event
   * @param el element
   */
  /*count: function (evt, countEl, el) {
    // 'this' is the input box
    el = el ? el : this;
    var text = el.value;

    var charCount = text.length ? text.length : el.textLength ? el.textLength : 0;
    var maxlength = el.maxlength && el.maxlength != '' ? el.maxlength : -1;

    if (maxlength != -1) {
      if (charCount > el.maxlength) {
        // truncate if exceeds max chars
        if (charCount > el.maxlength) {
          this.value = text.substr(0, el.maxlength);
          charCount = el.maxlength;
        }

        if (
          evt &&
          evt != null &&
          evt.keyCode != 8 &&
          evt.keyCode != 46 &&
          evt.keyCode != 37 &&
          evt.keyCode != 38 &&
          evt.keyCode != 39 &&
          evt.keyCode != 40 && // arrow keys
          evt.keyCode != 88 &&
          evt.keyCode != 86
        ) {
          // allow backspace and
          // delete key and arrow keys (37-40)
          // 86 -ctrl-v, 90-ctrl-z,
          if (evt) YAHOO.util.Event.stopEvent(evt);
        }
      }
    }

    if (maxlength != -1) {
      countEl.innerHTML = charCount + ' / ' + el.maxlength;
    } else {
      countEl.innerHTML = charCount;
    }
  },*/

  render: function (config, containerEl) {
    // we need to make the general layout of a control inherit from common
    // you should be able to override it -- but most of the time it wil be the same
    containerEl.id = this.id;

    var titleEl = document.createElement('span');

    YAHOO.util.Dom.addClass(titleEl, 'cstudio-form-field-title');
    titleEl.textContent = config.title;

    var controlWidgetContainerEl = document.createElement('div');
    
    var validEl = document.createElement('span');
    YAHOO.util.Dom.addClass(validEl, 'validation-hint');
    YAHOO.util.Dom.addClass(validEl, 'cstudio-form-control-validation fa fa-check');
    controlWidgetContainerEl.appendChild(validEl);

    var editDivEl = document.createElement('div');
    YAHOO.util.Dom.addClass(editDivEl, 'cstudio-form-control-filename-edit');
    controlWidgetContainerEl.appendChild(editDivEl);
    
    var editEl = document.createElement('input');
    this.editEl = editEl;
    YAHOO.util.Dom.addClass(editEl, 'btn btn-default btn-sm cstudio-button');
    editEl.type = 'button';
    editEl.value = 'Insert Link';
    editEl.style.padding = '1px 5px';
    editEl.style.marginLeft = '5px';
    editEl.style.minWidth = '0px';

    editDivEl.appendChild(editEl);

    var inputContainerDivEl = document.createElement('div');
    YAHOO.util.Dom.addClass(inputContainerDivEl, 'cstudio-form-control-file-name-container');
    controlWidgetContainerEl.appendChild(inputContainerDivEl);

    var inputDivEl = document.createElement('div');
    YAHOO.util.Dom.addClass(inputDivEl, 'cstudio-form-control-input-container no-wrap input-wrapper disabled');
    inputContainerDivEl.appendChild(inputDivEl);

    var inputEl = document.createElement('input');
    this.inputEl = inputEl;
    this.inputEl.disabled = true;
    this.inputEl.maxlength = 250;
    YAHOO.util.Dom.addClass(inputEl, 'datum');
    YAHOO.util.Dom.addClass(inputEl, 'cstudio-form-control-input cstudio-form-control-file-name');
    inputEl.value = (this.value = '_not-set') ? config.defaultValue : this.value;
    inputDivEl.appendChild(inputEl);

    YAHOO.util.Event.on(
      inputEl,
      'focus',
      function (evt, context) {
        context.form.setFocusedField(context);
      },
      this
    );

    YAHOO.util.Event.on(inputEl, 'change', this._onChangeVal, this);
    YAHOO.util.Event.on(inputEl, 'blur', this._onChange, this);

    for (var i = 0; i < config.properties.length; i++) {
      var prop = config.properties[i];

      if (prop.name == 'size') {
        inputEl.size = prop.value;
      }

      if (prop.name == 'maxlength') {
        inputEl.maxlength = prop.value;
      }

      if (prop.name == 'readonly' && prop.value == 'true') {
        this.readonly = true;
      }
    }

    /*if (this.readonly == true) {
      inputEl.disabled = true;
    }*/

    /*var countEl = document.createElement('div');
    YAHOO.util.Dom.addClass(countEl, 'char-count');
    YAHOO.util.Dom.addClass(countEl, 'cstudio-form-control-input-count');
    controlWidgetContainerEl.appendChild(countEl);
    this.countEl = countEl;

    var patternErrEl = document.createElement('div');
    patternErrEl.innerHTML = 'The value entered is not allowed in this field.';
    YAHOO.util.Dom.addClass(patternErrEl, 'cstudio-form-control-input-url-err');
    controlWidgetContainerEl.appendChild(patternErrEl);
    this.patternErrEl = patternErrEl;

    YAHOO.util.Event.on(inputEl, 'keyup', this.count, countEl);
    YAHOO.util.Event.on(inputEl, 'keypress', this.count, countEl);
    YAHOO.util.Event.on(inputEl, 'mouseup', this.count, countEl);
    */

    this.renderHelp(config, controlWidgetContainerEl);

    /*
    var descriptionEl = document.createElement('span');
    YAHOO.util.Dom.addClass(descriptionEl, 'description');
    YAHOO.util.Dom.addClass(descriptionEl, 'cstudio-form-field-description');
    descriptionEl.textContent = config.description;
    */

    containerEl.appendChild(titleEl);
    containerEl.appendChild(controlWidgetContainerEl);
    /*containerEl.appendChild(descriptionEl);*/

    YAHOO.util.Event.addListener(editEl, 'click', this.createDialog, this, true);
  },

  getValue: function () {
    return this.value;
  },

  setValue: function (value) {
    this.value = value;
    this.inputEl.value = value;
    /*this.count(null, this.countEl, this.inputEl);*/
    this._onChange(null, this);
    this.edited = false;
  },

  getName: function () {
    return 'extended-link-input';
  },

  getSupportedProperties: function () {
    return [
      {
        label: CMgs.format(langBundle, 'displaySize'),
        name: 'size',
        type: 'int',
        defaultValue: '50'
      },
      {
        label: CMgs.format(langBundle, 'maxLength'),
        name: 'maxlength',
        type: 'int',
        defaultValue: '50'
      },
      { label: CMgs.format(langBundle, 'readonly'), name: 'readonly', type: 'boolean' },
      { label: 'Tokenize for Indexing', name: 'tokenize', type: 'boolean', defaultValue: 'false' }
    ];
  },

  getSupportedConstraints: function () {
    return [
      { label: CMgs.format(langBundle, 'required'), name: 'required', type: 'boolean' },
      { label: CMgs.format(langBundle, 'matchPattern'), name: 'pattern', type: 'string' }
    ];
  },

  /**
   * create dialog
   */
  createDialog: function () {
    YDom.removeClass('tox-dialog');

    var newdiv = YDom.get('tox-dialog');
    
    if (newdiv == undefined) {
      newdiv = document.createElement('div');
      document.body.appendChild(newdiv);
    }

    var divIdName = 'tox-dialog';
    newdiv.setAttribute('id', divIdName);
    newdiv.setAttribute('style', 'position: relative;');
    newdiv.setAttribute('class', 'tox tox-silver-sink tox-tinymce-aux');
    
    newdiv.innerHTML =
      '<div tabindex="-1" class="tox-dialog-wrap"><div class="tox-dialog-wrap__backdrop"></div><div role="dialog" aria-modal="true" tabindex="-1" class="tox-dialog" aria-labelledby="dialog-label_362831062241703822078255" aria-describedby="dialog-describe_8249867402251703822078255" style="position: relative;"><div role="presentation" class="tox-dialog__header"><div class="tox-dialog__title" id="dialog-label_362831062241703822078255">Insert/Edit Link</div><button type="button" aria-label="Close" title="Close" tabindex="-1" class="tox-button tox-button--icon tox-button--naked"><div class="tox-icon"><svg width="24" height="24"><path d="M17.3 8.2L13.4 12l3.9 3.8a1 1 0 01-1.5 1.5L12 13.4l-3.8 3.9a1 1 0 01-1.5-1.5l3.9-3.8-3.9-3.8a1 1 0 011.5-1.5l3.8 3.9 3.8-3.9a1 1 0 011.5 1.5z" fill-rule="evenodd"></path></svg></div></button></div><div class="tox-dialog__content-js" id="dialog-describe_8249867402251703822078255"><div class="tox-dialog__body"><div class="tox-dialog__body-content"><div class="tox-form"><div class="tox-form__group" aria-disabled="false"><label class="tox-label" for="form-field_591596152161703822078253">URL</label><div class="tox-form__controls-h-stack"><div class="tox-control-wrap" aria-disabled="false"><input type="url" aria-errormessage="aria-invalid_526777492591703822075552" role="combobox" aria-autocomplete="list" aria-haspopup="true" tabindex="-1" data-alloy-tabstop="true" class="tox-textfield" aria-expanded="false" id="form-field_591596152161703822078253"><div class="tox-control-wrap__status-icon-wrap"><div title="invalid" aria-live="polite" id="aria-invalid_526777492591703822075552" class="tox-icon tox-control-wrap__status-icon-invalid"><svg width="24" height="24"><path d="M19.8 18.3c.2.5.3.9 0 1.2-.1.3-.5.5-1 .5H5.2c-.5 0-.9-.2-1-.5-.3-.3-.2-.7 0-1.2L11 4.7l.5-.5.5-.2c.2 0 .3 0 .5.2.2 0 .3.3.5.5l6.8 13.6zM12 18c.3 0 .5-.1.7-.3.2-.2.3-.4.3-.7a1 1 0 00-.3-.7 1 1 0 00-.7-.3 1 1 0 00-.7.3 1 1 0 00-.3.7c0 .3.1.5.3.7.2.2.4.3.7.3zm.7-3l.3-4a1 1 0 00-.3-.7 1 1 0 00-.7-.3 1 1 0 00-.7.3 1 1 0 00-.3.7l.3 4h1.4z" fill-rule="evenodd"></path></svg></div></div></div><button title="URL" type="button" data-alloy-tabstop="true" tabindex="-1" class="tox-button tox-button--icon tox-button--naked tox-browse-url"><span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24"><path d="M19 4a2 2 0 012 2v12a2 2 0 01-2 2h-4v-2h4V8H5v10h4v2H5a2 2 0 01-2-2V6c0-1.1.9-2 2-2h14zm-8 9.4l-2.3 2.3a1 1 0 11-1.4-1.4l4-4a1 1 0 011.4 0l4 4a1 1 0 01-1.4 1.4L13 13.4V20a1 1 0 01-2 0v-6.6z" fill-rule="nonzero"></path></svg></span></button></div></div><div class="tox-form__group" aria-disabled="false"><label class="tox-label" for="form-field_1313059962171703822078253">Text to display</label><input type="text" tabindex="-1" data-alloy-tabstop="true" class="tox-textfield" id="form-field_1313059962171703822078253"></div><div class="tox-form__group" aria-disabled="false"><label class="tox-label" for="form-field_6889352342181703822078254">Title</label><input type="text" tabindex="-1" data-alloy-tabstop="true" class="tox-textfield" id="form-field_6889352342181703822078254"></div><div class="tox-form__group" aria-disabled="false"><label class="tox-label" for="form-field_1211068102191703822078254">Open link in...</label><div class="tox-listboxfield"><button title="Open link in..." aria-label="Open link in..." aria-haspopup="true" type="button" data-alloy-tabstop="true" unselectable="on" tabindex="-1" class="tox-listbox tox-listbox--select" aria-expanded="false" data-value="" id="form-field_1211068102191703822078254" style="user-select: none;"><span class="tox-listbox__select-label">Current window</span><div class="tox-listbox__select-chevron"><svg width="10" height="10"><path d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z" fill-rule="nonzero"></path></svg></div></button></div></div></div></div></div></div><div class="tox-dialog__footer"><div role="presentation" class="tox-dialog__footer-start"></div><div role="presentation" class="tox-dialog__footer-end"><button title="Cancel" type="button" data-alloy-tabstop="true" tabindex="-1" class="tox-button tox-button--secondary">Cancel</button><button title="Save" type="button" data-alloy-tabstop="true" tabindex="-1" class="tox-button">Save</button></div></div></div></div>';
    
  

    // Instantiate the Dialog
    upload_dialog = new YAHOO.widget.Dialog('tox-dialog', {
      fixedcenter: true,
      visible: false,
      modal: true,
      close: true,
      constraintoviewport: true,
      underlay: 'none'/*,
      keylisteners: new YAHOO.util.KeyListener(
        document,
        { ctrl: false, keys: 27 },
        { fn: this.uploadPopupCancel, correctScope: true }
      )*/
    });

    // Render the Dialog
    upload_dialog.render();
    YAHOO.util.Event.addListener('zoomCancelButton', 'click', this.uploadPopupCancel, this, true);
    YAHOO.util.Event.addListener(
      'zoomFullButton',
      'click',
      function () {
        this.fullImageTab(!this.external ? CStudioAuthoringContext.previewAppBaseUri : '' + this.inputEl.value);
      },
      this,
      true
    );
    this.upload_dialog = upload_dialog;
    upload_dialog.show();
  },

  showEditLinkDialog: function () {
    var CMgs = CStudioAuthoring.Messages;
    var langBundle = CMgs.getBundle('forms', CStudioAuthoringContext.lang);
    // Disable Edit button to not allow double clicks
    this.editEl.disabled = true;

    var query = location.search.substring(1);
    var thisPage = CStudioAuthoring.Utils.getQueryVariable(query, 'path');
    var order = 'default';

    var callback = {
      success: function (contentTypes) {
        var query = location.search.substring(1);
        var currentPath = CStudioAuthoring.Utils.getQueryVariable(query, 'path');
        var contentTypeSize = contentTypes.order.length;

        var pageFound = 'false';
        for (var i = 0; i < contentTypeSize; i++) {
          var orderId = contentTypes.order[i].id;

          if (orderId == currentPath) {
            contentTypes.order[i].internalName = CMgs.format(langBundle, 'currentPage');
            contentTypes.order[i].order = this.parentControl.orderValue;
            pageFound = 'true';
            break;
          }
        }

        if (pageFound == 'false') {
          contentTypes.order.push({
            id: currentPath,
            order: this.parentControl.orderValue,
            internalName: CMgs.format(langBundle, 'currentPage'),
            name: CMgs.format(langBundle, 'currentPage')
          });
        }

        panelId = 'panel1';
        CStudioAuthoring.Service.reorderServiceCreatePanel(
          panelId,
          contentTypes,
          CStudioAuthoringContext.site,
          this.parentControl
        );
        // Enable Edit button
        this.parentControl.editEl.disabled = false;
      },

      failure: function () {
        // Enable Edit button
        this.parentControl.editEl.disabled = false;
      }
    };
    callback.parentControl = this;

    CStudioAuthoring.Service.getOrderServiceRequest(CStudioAuthoringContext.site, thisPage, order, callback);
    this.editEl.disabled = false;
  }
});

CStudioAuthoring.Module.moduleLoaded('extended-link-input', CStudioForms.Controls.extendedLinkInput);
