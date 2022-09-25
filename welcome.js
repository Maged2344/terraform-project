var aws = require("aws-sdk");
var ses = new aws.SES({ region: "us-east-1" });
exports.handler = async function (event) {
  var params = {
    Destination: {
      ToAddresses: ["maged3bdelfatah@gmail.com"],
    },
    Message: {
      Body: {
        Text: { Data: "hello from lambda terraform" },
      },

      Subject: { Data: "terraform subject" },
    },
    Source: "maged3bdelfatah@gmail.com",
  };
 
  return ses.sendEmail(params).promise()
};