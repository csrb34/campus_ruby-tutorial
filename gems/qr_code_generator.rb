require 'rqrcode'

qr_code = RQRCode::QRCode.new("https://thoughtworks.com")

png = qr_code.as_png(
  color: "black",
  fill: "white",
  size: 300
)

IO.binwrite("twqr.png", png.to_s)
