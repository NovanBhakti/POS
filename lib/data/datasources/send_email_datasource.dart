import 'package:flutter_posresto_app/core/extensions/int_ext.dart';
import 'package:flutter_posresto_app/core/extensions/string_ext.dart';
import 'package:flutter_posresto_app/presentation/home/models/product_quantity.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';

Future<void> sendToEmail(String email, List<ProductQuantity> products, discount,
    tax, service, price, diff, subTotal, paymentAmount, paymentMethod) async {
  String productDetailsHTML = '';
  var totalPrice = price.toString().toIntegerFromText.currencyFormatRp;
  var discountValue = discount.toString().toIntegerFromText.currencyFormatRp;
  var taxValue = tax.toString().toIntegerFromText.currencyFormatRp;
  var serviceValue = service.toString().toIntegerFromText.currencyFormatRp;
  var diffValue = diff.toString().toIntegerFromText.currencyFormatRp;
  var subTotalValue = subTotal.toString().toIntegerFromText.currencyFormatRp;
  var amountValue = paymentAmount.toString().toIntegerFromText.currencyFormatRp;

  for (var product in products) {
    var formattedPrice =
        product.product.price.toString().toIntegerFromText.currencyFormatRp;
    productDetailsHTML += '<tr class="item">'
        '<td>${product.product.name}</td>'
        '<td>${product.quantity}</td>'
        '<td>$formattedPrice</td>'
        '</tr>';
  }
  String priceHTML = '<tr class="total">'
      '<td><strong>Total:</strong></td>'
      '<td><strong>$totalPrice</strong></td>'
      '</tr>';

  String discountHTML = '<tr class="total">'
      '<td>Discount:</td>'
      '<td>$discountValue</td>'
      '</tr>';

  String taxHTML = '<tr class="total">'
      '<td>Tax:</td>'
      '<td>$taxValue</td>'
      '</tr>';

  String serviceHTML = '<tr class="total">'
      '<td>Service Charge:</td>'
      '<td>$serviceValue</td>'
      '</tr>';

  String subTotalHTML = '<tr class="total">'
      '<td>Sub Total:</td>'
      '<td>$subTotalValue</td>'
      '</tr>';

  String methodHTML = '';
  if (paymentMethod == 'Cash') {
    methodHTML = '<tr class="total">'
        '<td>$paymentMethod</td>'
        '<td>$amountValue</td>'
        '</tr>';
  }
  String diffHTML = '';
  if (diff == '0') {
    diffHTML = '<tr class="total">'
        '<td>Charge:</td>'
        '<td>$diffValue</td>'
        '</tr>';
  }

  String emailHTML = '''
    <html>
    <head>
      <style>
        body {
				font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
				text-align: center;
				color: #777;
			}

			body h1 {
				font-weight: 300;
				margin-bottom: 0px;
				padding-bottom: 0px;
				color: #000;
			}

			body h3 {
				font-weight: 300;
				margin-top: 10px;
				margin-bottom: 20px;
				font-style: italic;
				color: #555;
			}

			body a {
				color: #06f;
			}

			.invoice-box {
				max-width: 800px;
				margin: auto;
				padding: 30px;
				border: 1px solid #eee;
				box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
				font-size: 16px;
				line-height: 24px;
				font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
				color: #555;
			}

			.invoice-box table {
				width: 100%;
				line-height: inherit;
				text-align: left;
				border-collapse: collapse;
			}

			.invoice-box table td {
				padding: 5px;
				vertical-align: top;
			}

			.invoice-box table tr td:nth-child(2) {
				text-align: right;
			}

			.invoice-box table tr.top table td {
				padding-bottom: 20px;
			}

			.invoice-box table tr.top table td.title {
				font-size: 45px;
				line-height: 45px;
				color: #333;
			}

			.invoice-box table tr.information table td {
				padding-bottom: 40px;
			}

			.invoice-box table tr.heading td {
				background: #eee;
				border-bottom: 1px solid #ddd;
				font-weight: bold;
			}

			.invoice-box table tr.details td {
				padding-bottom: 20px;
			}

			.invoice-box table tr.item td {
				border-bottom: 1px solid #eee;
			}

			.invoice-box table tr.item.last td {
				border-bottom: none;
			}

			.invoice-box table tr.total td:nth-child(2) {
				border-top: 4px solid #eee;
				font-weight: bold;
			}

			@media only screen and (max-width: 600px) {
				.invoice-box table tr.top table td {
					width: 100%;
					display: block;
					text-align: center;
				}

				.invoice-box table tr.information table td {
					width: 100%;
					display: block;
					text-align: center;
				}
			}
      </style>
    </head>
    <body>
      <div class="invoice-box">
        <h1>Invoice</h1>
        <hr>
        <table cellpadding="0" cellspacing="0">
          <tr class="heading">
            <td>Produk</td>
            <td>Jumlah</td>
            <td>Harga</td>
          </tr>
          $productDetailsHTML
        <hr>
          $subTotalHTML
          $discountHTML
          $taxHTML
          $serviceHTML
          <hr>
          $priceHTML
          $methodHTML
          $diffHTML
      </div>
    </body>
    </html>
  ''';
  // send email
  var username = 'novanbhakti0111@gmail.com';
  var password = 'xkfemfuuemutsfqf';
  final smtpServer = gmail(username, password);
  final message = Message()
    ..from = Address(username, 'Novan Nur Bhakti')
    ..recipients.add(email)
    ..subject = 'Invoice Pembelian ${DateTime.now()}'
    ..html = '$emailHTML';

  try {
    final sendReport = await send(message, smtpServer);
    print('Message sent: ' + sendReport.toString());
  } on MailerException catch (e) {
    print('Message not sent.');
    for (var p in e.problems) {
      print('Problem: ${p.code}: ${p.msg}');
    }
  }
}
