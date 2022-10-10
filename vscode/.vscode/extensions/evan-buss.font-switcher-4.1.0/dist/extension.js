(()=>{"use strict";var t={872:function(t,e,o){var n=this&&this.__awaiter||function(t,e,o,n){return new(o||(o=Promise))((function(i,r){function a(t){try{c(n.next(t))}catch(t){r(t)}}function s(t){try{c(n.throw(t))}catch(t){r(t)}}function c(t){var e;t.done?i(t.value):(e=t.value,e instanceof o?e:new o((function(t){t(e)}))).then(a,s)}c((n=n.apply(t,e||[])).next())}))};Object.defineProperty(e,"__esModule",{value:!0}),e.removeFont=e.addFont=e.selectFontSize=e.selectFont=void 0;const i=o(496),r=o(5);function a(t,e){return n(this,void 0,void 0,(function*(){const o=yield i.window.showInputBox({placeHolder:"Font Name"});o&&(0,r.getConfig)(t).update("fontFamily",[o,...e].join(", "),!0)}))}function s(t,e){return n(this,void 0,void 0,(function*(){const o=yield i.window.showQuickPick(e,{placeHolder:`Remove ${t} Font`});o&&(0,r.getConfig)(t).update("fontFamily",e.filter((t=>t!==o)).join(", "),!0)}))}e.selectFont=function(t){return n(this,void 0,void 0,(function*(){const e=(0,r.getConfig)(t),o=(0,r.parseFontString)(e.fontFamily).filter((t=>!!t)),n=[...o.map((t=>({label:t,type:"font"}))),{alwaysShow:!0,label:"$(add) Add Font",type:"button"},{alwaysShow:!0,label:"$(trash) Remove Font",type:"button"}],c=yield i.window.showQuickPick(n,{placeHolder:`Select ${t} Font`,onDidSelectItem:t=>{e.update("fontFamily","button"===t.type?e.fontFamily:t.label,!0)}});if(!c)return void e.update("fontFamily",e.fontFamily,!0);if("button"===c.type)return e.update("fontFamily",e.fontFamily,!0),void("$(add) Add Font"===c.label?yield a(t,o):"$(trash) Remove Font"===c.label&&(yield s(t,o)));const l=o.indexOf(c.label);-1!==l&&(o.splice(l,1),o.splice(0,0,c.label),e.update("fontFamily",o.join(", "),!0))}))},e.selectFontSize=function(t){return n(this,void 0,void 0,(function*(){const e=(0,r.getConfig)(t),o=e.get("fontSize"),n=yield i.window.showInputBox({prompt:`Enter ${t} Font Size`,value:o?o.toString():""});if(n){const t=Number.parseInt(n);isNaN(t)?i.window.showErrorMessage("Invalid font size!"):e.update("fontSize",t,!0)}}))},e.addFont=a,e.removeFont=s},5:(t,e,o)=>{Object.defineProperty(e,"__esModule",{value:!0}),e.getConfig=e.parseFontString=void 0;const n=o(496);e.parseFontString=function(t){return t.replace(/\s*,\s*/g,",").split(",")},e.getConfig=function(t){return"Editor"===t?n.workspace.getConfiguration("editor"):n.workspace.getConfiguration("terminal.integrated")}},496:t=>{t.exports=require("vscode")}},e={};function o(n){var i=e[n];if(void 0!==i)return i.exports;var r=e[n]={exports:{}};return t[n].call(r.exports,r,r.exports,o),r.exports}var n={};(()=>{var t=n;Object.defineProperty(t,"__esModule",{value:!0}),t.deactivate=t.activate=void 0;const e=o(496),i=o(872);t.activate=function(t){t.subscriptions.push(e.commands.registerCommand("font-switcher.switchFont",(()=>(0,i.selectFont)("Editor"))),e.commands.registerCommand("font-switcher.setFontSize",(()=>(0,i.selectFontSize)("Editor"))),e.commands.registerCommand("font-switcher.switchTerminalFont",(()=>(0,i.selectFont)("Terminal"))),e.commands.registerCommand("font-switcher.setTerminalFontSize",(()=>(0,i.selectFontSize)("Terminal"))))},t.deactivate=function(){}})(),module.exports=n})();