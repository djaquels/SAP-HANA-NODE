var hana = require('@sap/hana-client');

var conn = hana.createConnection();

var conn_params = {
  serverNode  : '127.0.0.1:39017',
  uid         : 'SYSTEM',
  pwd         : 'Passwd1234'
};

conn.connect(conn_params, function(err) {
  if (err) throw err;
  conn.exec('select * from M_DATABASES', [], function (err, result) {
    if (err) throw err;

    result.forEach(element => {
        console.log(element);
    });
    // output --> Name: Tee Shirt, Description: V-neck
    conn.disconnect();
  })
});