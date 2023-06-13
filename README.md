This is a Terraform module which creates an s3 static website, served with cloudfront. The route53 domain in this module belongs to another aAWS account. It also has a gitlab ci that automatically uploads the index.html file to the s3 bucket on every push to the gitlab repo. You can configure this per your requirements. You'd need the cloudfront distribution id to create an invalidation before the new file/folder is uploaded.


testing
