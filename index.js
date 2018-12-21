const express = require('express');
var bodyParser = require('body-parser');
const cors = require('cors');
const mysql = require('mysql');
const nodemailer= require('nodemailer');//belum diinstal

var app = express();
const port = 1997;

var tujuanemail,tokenrandom,mailOptions,host,link;

var transporter = nodemailer.createTransport({
    service: 'gmail',
 auth: { 
      user: 'edwardusbenny@gmail.com',
      pass: ''
 },
tls:{
   rejectUnauthorized : false
}})


app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cors());


const conn = mysql.createConnection({
    host: 'localhost',
    user: 'saitama',
    password: 'abc123',
    database: 'tokodagang',
    port: 3306
});

app.get('/', (req, res) => {
    res.send('<h1>Selamat Datang! API ANDA SUDAH AKTIF</h1>');
});

app.get('/laptop', (req, res) => {
    var sql = `select * from tableitem where categoryid = 6;`;
    conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(results);
    })
})

app.get('/keyboardmouse', (req, res) => {
    var sql = `select * from tableitem where categoryid = 2;`;
    conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(results);
    })
})

app.get('/controller', (req, res) => {
    var sql = `select * from tableitem where categoryid like '3';`;
    conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(results);
    })
})

app.get('/monitor', (req, res) => {
    var sql = `select * from tableitem where categoryid like '4';`;
    conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(results);
    })
})

app.get('/console', (req, res) => {
    var sql = `select * from tableitem where categoryid like '5';`;
    conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(results);
    })
})

app.get('/vga', (req, res) => {
    var sql = `select * from tableitem where categoryid like '1';`;
    conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(results);
    })
})

app.get('/speaker', (req, res) => {
    var sql = `select * from tableitem where categoryid like '7';`;
    conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(results);
    })
})

app.get('/cpu', (req, res) => {
    var sql = `select * from tableitem where categoryid like '8';`;
    conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(results);
    })
})

app.get('/listitem', (req, res) => {
    var sql = `select * from tableitem`;
    conn.query(sql, (err, results) => {
        if (err) throw err;
        res.send(results);
    })
})
app.post('/cart', (req,res) => {
    const {  NamaProduk, Harga, Gambar ,username } = req.body;
    var data = { NamaProduk, Harga, Gambar ,username };
            var sql = 'INSERT INTO cart SET ?';
            conn.query(sql, data, (err, results) => {
                if(err) throw err;
                res.send(results);
            })      
});
app.get('/cart', (req,res) => {
    const { username } = req.query;
    var sql = `select * from cart where username = "${username}";`;
    conn.query(sql, (err, results) => {
        if(err) throw err;
        res.send(results);
    })
});
app.delete('/cart/:id', (req,res) => {
    var sql = `delete from cart where idCart = '${req.params.id}';`
    conn.query(sql, (err, results) => {
        if(err) throw err;
        res.send(results);
    })
});
app.delete('/checkout /', (req,res) => {
    const { NamaProduk, Harga, Gambar ,username } = req.body;
    var data = { NamaProduk, Harga, Gambar ,username };
    var mailOptions = {
        from: 'Ben',
         to: tujuanemail, 
          subject: 'Checkout',
          html: `<h1>Checkout berhasil,terimakasih telah berbelanja di tokodagang.</h1>
          <h1>`+NamaProduk`.</h1>
          <h1>`+Harga`.</h1>
          <h1>Silahkan lakukan pembayran sesuai keterangan diatas.</h1>` }

transporter.sendMail(mailOptions,(err,res1)=>{
  if(err){
      console.log(err)
  }
  else{ console.log('Email sukses terkirim!');
   res.send('Email sukses terkirim!'); }
});
    var sql = `delete from cart where username = "${username}";`;
    conn.query(sql, (err, results) => {
        if(err) throw err;
        res.send(results);
    })
});


app.get('/searchresults/:string', (req,res) => {
    var sql = `select * from tableitem where nama like '%${req.params.string}%';`;
    conn.query(sql, (err,results) => {
        if(err) throw err;
        res.send(results);
    })
})

app.post('/register', (req, res) => {
    const { username, email, password } = req.body;
    var data = {
        username: username,
        email: email,
        password: password,
    };
    tujuanemail = email
    var sql = `INSERT INTO tableuser SET ?`;
    conn.query(sql, data, (err, results) => {
        if(err) throw err;

        res.send('Register Success!!');
        console.log(results);
     
    })
tokenrandom = Math.floor((Math.random() * 1000000));

link = "http://localhost:3000/verify"
// ?id="+tokenrandom;

        var mailOptions = {
             from: 'Ben',
              to: tujuanemail, 
               subject: 'Welcome',
               html: `<h1>Registrasi anda telah berhasil,Mohon verifikasi email anda dengan link dibawah.</h1>
                    <a href=`+link+`>Click here to verify` }
    
    transporter.sendMail(mailOptions,(err,res1)=>{
       if(err){
           console.log(err)
       }
       else{ console.log('Email sukses terkirim!');
        res.send('Email sukses terkirim!'); }
    })
})

app.get('/verify',function(req,res){
 
        if(req.query.id==tokenrandom)
        {
            console.log("email is verified");
            res.send("<h1>Email "+tujuanemail +" is been Successfully verified");
            var mailOptions = {
                from: 'Ben',
                 to: tujuanemail, 
                  subject: 'Verify',
                  html: `<h1>Verifikasi berhasil, selamat berbelanja di tokodagang.</h1>` }
       
       transporter.sendMail(mailOptions,(err,res1)=>{
          if(err){
              console.log(err)
          }
          else{ console.log('Email sukses terkirim!');
           res.send('Email terverifikasi!'); }
       })
        }
        else
        {
            console.log("email is not verified");
            res.send("<h1>email is not verified</h1>");
        }
    });

app.get('/Login', (req, res) => {
    const { email, password } = req.query;
    var data ={
        email:email,
        password:password
    };
    var sql = `select * from tableuser where email ='${email}'and password='${password}'`;
    conn.query(sql,data,(err,results) => {
        if(err) throw err;
        res.send(results);
    })
});

app.get('/keeplogin', (req,res) => {
    const { email } = req.query;
    var data = {
        email: email,
    };
    var sql = `select * from tableuser WHERE email = '${email}';`;
    conn.query(sql, data, (err, results) => {
        if(err) throw err;
        console.log(results);
        res.send(results);
    })
});

app.post('/tambahproduk', (req,res) => {
    const { nama, deskripsi, gaambar, categoryid, harga } = req.body;
    var data = {  nama, deskripsi, gaambar, categoryid, harga}
    var sql = 'INSERT INTO tableitem SET ?';
    conn.query(sql, data, (err, results) => {
        if (err) throw err;
        var sql1 = `select * from tableitem`;
        conn.query(sql1, (err1, results1) => {
            if (err1) throw err1;
            res.send(results1);
        })
    })
})

app.delete('/hapusproduk/:id', (req,res) => {
    var sql = `delete from tableitem where id = '${req.params.id}';`;
    conn.query(sql, (err, results) => {
        if(err) throw err;
        var sql1 = `select * from products;`;
        conn.query(sql1, (err1, results1) => {
            if(err1) throw err1;
            res.send(results1);
        })
    })
});
// app.get('/transaction', (req,res) => {
//     var sql = 'select * from transaction;';

//     conn.query(sql, (err, results) => {
//         if(err) throw err;

//         res.send(results);
//         console.log(results);
//     })
// })
// app.get('/transDetail/:idtrans', (req,res) => {
//     var sql = 'select * from transactiondetail where transactionid = ' + req.params.idtrans;

//     conn.query(sql, (err, results) => {
//         if(err) throw err;

//         res.send(results);
//         console.log(results);
//     })
// });

app.listen(port, () => console.log(`Example app listening on port ${port}!`));

// app.get('/listitem', (req,res) => {
//     var sql = `select ti.id, ti.nama,ti.deskripsi,ti.gambar, tc.namacategory,
//     harga from tableitem ti
//    join tablecategory tc
//    on ti.categoryid = tc.id `;

//     var sql1 = `select * from tablecategory;`;
//     conn.query(sql, (err, results) => {
//         if(err) throw err;
//         console.log(results);

//         conn.query(sql1, (err1, results1) => {
//             if(err1) throw err1;
//             res.send({ listitem: results, category: results1 });
//             console.log(results1);
//         })
//     })
// });

// app.get('/category', (req,res) => {
//     const { category } = req.query;
//     var sql = `select ti.id, ti.nama,ti.deskripsi,ti.gambar, tc.namacategory,
//                ti.harga from tableitem ti
//                 join tablecategory tc
//                on ti.categoryid = tc.id 
//                where tc.namacategory like "%${category}%"`;
//     conn.query(sql, (err, results) => {
//         if(err) throw err;

//         res.send({listitem: results});
//         console.log(results);
//     })
// });

// app.get('/kamar',(req,res)=>{
//     const { category } = req.query;
//     var sql = `select tk.id, tk.nomorkamar, tc.namacategory,
//      tk.harga from tablekamar tk
//     join tablecategory tc
//     on tk.categoryid = tc.id 
//     where tc.namacategory like "%${category}%"`
//     conn.query(sql,(err,results) => {
//         if(err) throw err;
        
//         res.send({ listkamar: results});
// })
// })



// app.put('/listkamar/:id', (req,res) => {
//     var { id } = req.params;
//     var { nomorkamar, categoryid, harga } = req.body;
//     var data = { 
//         NomorKamar: nomorkamar,
//         CategoryId: categoryid,
//         Harga: harga
//     }
//     var sql = `UPDATE tablekamar SET ? WHERE Id = ${id}`;
//     conn.query(sql,data,(err, results) => {
//         if(err) throw err;

//         if(err) res.send({err, status: 'Error'});
//         else {
//             var sql1 = `select * from tablekamar;`;
//             conn.query(sql1, (err1, results1) => {
//                 if(err1) throw err1;
                
//                 res.send(results1);
//             })
//         }
//     })
// });


// app.put('/category/:id', (req,res) => {
//     var { id } = req.params;
//     var { namacategory } = req.body;
//     var data = {
//         Name: namacategory
//     }
//     var sql = `UPDATE tablecategory SET ? WHERE Id = ${id}`;
//     conn.query(sql, data, (err, results) => {
//         if(err) throw err;

//         sql = `SELECT * from tablecategory`;
//         conn.query(sql, (err1, results1) => {
//             if(err1) throw err1;

//             res.send(results1);
//         })
//     })
// })

// app.delete('/listkamar/:id', (req,res) => {
//     var { id } = req.params;

//     var sql = `DELETE FROM tablekamar where id = ${id}`;
//     conn.query(sql, (err, results) => {
//         if(err) throw err;

//         sql = `select * from tablekamar;`;
//         conn.query(sql, (err1, results1) => {
//             if(err1) throw err1;

//             res.send(results1);
//         })
//     })
// })

// app.delete('/category/:id', (req,res) => {
//     var { id } = req.params;

//     var sql = `DELETE FROM tablecategory where Id = ${id}`;
//     conn.query(sql, (err, results) => {
//         if(err) throw err;

//             sql = `SELECT * FROM category`;
//             conn.query(sql, (err1, results1) => {
//                 if(err1) throw err1;

//                 res.send(results1);
//             })
//         })
//     })


// app.post('/category', (req,res) => {
//     const { namacategory } = req.body;
//     var data = { 
//         Name: namacategory,
//     };
//     var sql = 'INSERT INTO tablecategory SET ?';
//     conn.query(sql, data, (err, results) => {
//         if(err) throw err;
//         var sql1 = `select * from tablecategory;`;
//         conn.query(sql1, (err1, results1) => {
//             if(err1) throw err1;
            
//             res.send(results1);
//         })
//     })
// })

// app.post('/listkamar', (req,res) => {
//     const { nomorkamar, categoryid, harga } = req.body;
//     var data = { 
//         NomorKamar: nomorkamar,
//         CategoryId: categoryid,
//         Harga: harga
//     };
//     var sql = 'INSERT INTO tablekamar SET ?'
//     conn.query(sql,data,(err, results) => {
//         if(err) throw err;

//         if(err) res.send({err, status: 'Error'});
//         else {
//             var sql1 = `select * from tablekamar;`;
//             conn.query(sql1, (err1, results1) => {
//                 if(err1) throw err1;
                
//                 res.send(results1);
//             })
//         }
//     })
// });
