/* This is a self-defined macro, created by Peng Zhao <pzhao@pzhao.net>. */
/* Anyone can re-use or modify this file for free. */
/* Please leave a trace here if you modify it. */
/* 2018-12-02 Peng Zhao: created. */
/* 2018-12-04 Peng Zhao: uploaded and shared. */

remark.macros.width = function (width) {
  var url = this;
  return '<img src="' + url + '" style="width: ' + width + '" />';
};
remark.macros.height = function (height) {
  var url = this;
  return '<img src="' + url + '" style="height: ' + height + '" />';
};
