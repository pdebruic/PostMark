| file email interface |

file := (FSLocator imageDirectory / 'image.jpg') resolve.
	
email := PMEmail new
	from: 'francois@wapict.be'
	to: 'francois@yopmail.com';
	subject: 'Test Application';
	textBody: 'Yeah baby';
	addAttachment: 'image.jpg' content: file readStream contents contentType: 'image/jpeg';
	attachFile: (FSLocator imageDirectory / 'pigeon.jpg');
	yourself.

interface := PMInterface new.
interface apiKey: 'blopblop'.

interface send: email.