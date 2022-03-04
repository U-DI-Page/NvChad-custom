const fs = require('fs');

// 异步读取上级目录下的所有文件
fs.readdir('../', function(err, files) {
  if (err) {
    console.log('Error', err);
  } else {
    console.log('Result', files);
  }
});

